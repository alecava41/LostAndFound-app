import 'package:dartx/dartx.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/get_room_messages_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/registration_chat_usecase.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';

abstract class ChatDataSource {
  Future<void> register(RegistrationChatParams params);

  Future<void> login(String email, String password);

  Stream<List<Room>> getUserRooms();

  Future<Room> createRoom(CreateRoomParams params);

  Future<Pair<Room, Stream<List<Message>>>> getRoomMessages(GetRoomMessagesParams params);

  Future<void> sendMessage(SendMessageParams params);
}

class ChatDataSourceImpl implements ChatDataSource {
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

    if (rooms.any((room) => room.second == "${params.id1}-${params.itemId}-${params.id2}")) {
      return types.Room(
          id: rooms.firstWhere((e) => e.second == "${params.id1}-${params.itemId}-${params.id2}").first,
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
        "active": false,
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
    FirebaseChatCore.instance.sendMessage(params.message, params.roomId);

    // Workaround to have active rooms and "last message" without Cloud Functions
    await FirebaseChatCore.instance
        .getFirebaseFirestore()
        .collection("rooms")
        .doc(params.roomId)
        .update({"metadata.active": true, "metadata.lastMessage": params.message.text});

    FirebaseChatCore.instance.firebaseUser?.uid;
  }
}
