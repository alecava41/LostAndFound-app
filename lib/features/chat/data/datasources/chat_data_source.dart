import 'package:dartx/dartx.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/chat/data/models/send_notification_body.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/get_room_messages_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/read_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/registration_chat_usecase.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';

import 'chat_client.dart';

abstract class ChatDataSource {
  Future<void> register(RegistrationChatParams params);

  Future<void> login(String email, String password);

  Stream<List<Room>> getUserRooms();

  Future<Room> createRoom(CreateRoomParams params);

  Future<Pair<Room, Stream<List<Message>>>> getRoomMessages(GetRoomMessagesParams params);

  Future<void> sendMessage(SendMessageParams params);

  Future<void> readChat(ReadChatParams params);

  Future<void> logout(NoParams params);
}

class ChatDataSourceImpl implements ChatDataSource {
  final ChatClient _client;

  ChatDataSourceImpl(this._client);

  @override
  Future<void> register(RegistrationChatParams params) async {
    final credentials = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );

    await FirebaseChatCore.instance.createUserInFirestore(
      types.User(
        firstName: params.username,
        id: credentials.user!.uid,
        lastName: "",
      ),
    );
  }

  @override
  Future<void> login(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> logout(NoParams params) async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Stream<List<Room>> getUserRooms() {
    return FirebaseChatCore.instance.rooms(orderByUpdatedAt: true);
  }

  @override
  Future<Room> createRoom(CreateRoomParams params) async {
    final users = (await FirebaseChatCore.instance.getFirebaseFirestore().collection("users").get())
        .docs
        .map((e) => Pair(e.id, e.data()['firstName'] as String));

    final rooms = (await FirebaseChatCore.instance.getFirebaseFirestore().collection("rooms").get())
        .docs
        .map((e) => Pair(e.id, e.data()['name'] as String));

    if (rooms.any((room) =>
        room.second == "${params.id1}-${params.itemId}-${params.id2}" ||
        room.second == "${params.id2}-${params.itemId}-${params.id1}")) {
      return types.Room(
          id: rooms
              .firstWhere((e) =>
                  e.second == "${params.id1}-${params.itemId}-${params.id2}" ||
                  e.second == "${params.id2}-${params.itemId}-${params.id1}")
              .first,
          type: RoomType.group,
          users: const []);
    }

    return await FirebaseChatCore.instance.createGroupRoom(
      name: "${params.id1}-${params.itemId}-${params.id2}",
      users: [
        types.User(id: users.firstWhere((user) => user.second == params.username2).first),
      ],
      metadata: {
        "id1": params.id1,
        "id2": params.id2,
        "username1": params.username1,
        "username2": params.username2,
        "item": params.itemId,
        "title": params.itemName,
        "active": false,
        "lastMessage": null,
        "lastMessageId": null,
        "last-${params.id1}": null,
        "last-${params.id2}": null
      },
    );
  }

  @override
  Future<Pair<Room, Stream<List<Message>>>> getRoomMessages(GetRoomMessagesParams params) async {
    final room = await FirebaseChatCore.instance.room(params.roomId).first;
    return Pair(room, FirebaseChatCore.instance.messages(room));
  }

  @override
  Future<void> sendMessage(SendMessageParams params) async {
    // Send message
    FirebaseChatCore.instance.sendMessage(params.message, params.roomId);

    // Retrieve lastMessage id
    final messageId = (await FirebaseChatCore.instance
            .getFirebaseFirestore()
            .collection("rooms/${params.roomId}/messages")
            .orderBy("createdAt", descending: true)
            .limit(1)
            .get())
        .docs
        .first
        .id;

    // Workaround to have active rooms, "last message" and "chats to be read" without Cloud Functions
    await FirebaseChatCore.instance.getFirebaseFirestore().collection("rooms").doc(params.roomId).update(
      {
        "metadata.active": true,
        "metadata.lastMessage": params.message.text,
        "metadata.lastMessageId": messageId,
        "metadata.last-${params.senderId}": messageId
      },
    );

    // Let the server send the push notification to the other user
    await _client.sendNotification(SendNotificationBody(
      receiver: params.receiverId,
      room: params.roomId,
      item: params.itemId,
    ));
  }

  @override
  Future<void> readChat(ReadChatParams params) async {
    // Retrieve lastMessage id
    final messages = (await FirebaseChatCore.instance
            .getFirebaseFirestore()
            .collection("rooms/${params.roomId}/messages")
            .orderBy("createdAt", descending: true)
            .limit(1)
            .get())
        .docs;

    if (messages.isNotEmpty) {
      final messageId = messages.first.id;

      // Set the user's last read message to the last message
      await FirebaseChatCore.instance.getFirebaseFirestore().collection("rooms").doc(params.roomId).update(
        {"metadata.last-${params.currentId}": messageId},
      );
    }
  }
}
