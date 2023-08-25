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
        // imageUrl: 'https://i.pravatar.cc/300?u=$_email',
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
    final users = await FirebaseChatCore.instance.users().first;
    final rooms = await FirebaseChatCore.instance.rooms().first;

    if (rooms.any((room) => room.name == "${params.id1}-${params.itemId}-${params.id2}")) {
      return rooms.firstWhere((room) => room.name == "${params.id1}-${params.itemId}-${params.id2}");
    }

    return await FirebaseChatCore.instance.createGroupRoom(name: "${params.id1}-${params.itemId}-${params.id2}", users: [
      users.firstWhere((user) => user.firstName == params.username1),
      users.firstWhere((user) => user.firstName == params.username2)
    ], metadata: {
      "id1": params.id1,
      "id2": params.id2,
      "username1": params.username1,
      "username2": params.username2,
      "item": params.itemId
    });
  }

  @override
  Future<Pair<Room, Stream<List<Message>>>> getRoomMessages(GetRoomMessagesParams params) async {
    final room = await FirebaseChatCore.instance.room(params.roomId).first;
    return Pair(room, FirebaseChatCore.instance.messages(room));
  }

  @override
  Future<void> sendMessage(SendMessageParams params) async {
   FirebaseChatCore.instance.sendMessage(params.message, params.roomId);
  }
}
