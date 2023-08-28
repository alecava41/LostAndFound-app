import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/image_dialog.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/chat/chat_bloc.dart' as chat;
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_sent.dart' as sent;
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/presentation/widgets/circular_image_avatar.dart';
import '../../../../injection_container.dart';
import '../../../claim/presentation/widgets/claim/claimed_item_card.dart';
import '../../../claim/presentation/widgets/claim/claimed_status_card.dart';

class ChatScreen extends StatelessWidget {
  final String roomId;
  final int itemId;

  const ChatScreen({
    super.key,
    required this.roomId,
    required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<chat.ChatBloc>()..add(chat.ChatEvent.chatContentCreated(roomId, itemId)),
      child: BlocConsumer<chat.ChatBloc, chat.ChatState>(
        listener: (ctx, state) {},
        builder: (ctx, state) {
          if (state.hasLoadingError) {
            // TODO (@backToFrancesco) create retry screen
            return Container();
          }

          if (state.isLoading || state.room == null) {
            return const CustomCircularProgress(size: 100);
          }

          final room = state.room!;
          final currentUser = room.users.firstWhere((user) => user.firstName == state.currentUsername);

          final otherUser = room.users.firstWhere((user) => user.firstName != state.currentUsername);
          final otherUserId = (room.metadata!["username1"]! != state.currentUsername
              ? room.metadata!["id1"]!
              : room.metadata!["id2"]!) as int;

          final receivedClaim =
              state.item!.claims?.firstWhere((receivedClaim) => receivedClaim.user.username == otherUser.firstName);
          final sentClaim = state.item!.userClaim;

          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              title: ImageDialogWidget(
                token: state.token,
                errorAsset: "assets/images/no-user.jpg",
                imageUrl: "$baseUrl/api/users/$otherUserId/image",
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(otherUser.firstName!, style: const TextStyle(color: Colors.black, fontSize: 25)),
                      const SizedBox(width: 6),
                      CircularImage(
                        radius: 22,
                        token: state.token,
                        hasImage: true,
                        errorAsset: "assets/images/no-user.jpg",
                        imageUrl: '$baseUrl/api/users/$otherUserId/image',
                      ),
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
            ),
            body: Column(
              children: [
                receivedClaim != null
                    ? Container(
                        color: PersonalizedColor.backGroundColor,
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                        child: ClaimedItemCard(
                          token: state.token,
                          claim: ClaimReceived(
                            id: receivedClaim.id,
                            item: Item(id: state.item!.id, title: state.item!.title),
                            user: User(
                                id: receivedClaim.user.id,
                                hasImage: receivedClaim.user.hasImage,
                                username: receivedClaim.user.username),
                            status: receivedClaim.status,
                            opened: receivedClaim.opened,
                          ),
                        ),
                      )
                    : (sentClaim != null
                        ? Container(
                            color: PersonalizedColor.backGroundColor,
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                            child: ClaimedStatusCard(
                              claim: sent.ClaimSent(
                                  status: sentClaim.status,
                                  id: sentClaim.id,
                                  item: sent.Item(
                                      id: state.item!.id, title: state.item!.title, hasImage: state.item!.hasImage)),
                              token: state.token,
                            ))
                        : Container()),
                Expanded(
                  child: StreamBuilder<List<types.Message>>(
                    initialData: const [],
                    stream: state.messages,
                    builder: (context, snapshot) => Chat(
                      theme: const DefaultChatTheme(
                        //inputBackgroundColor: Colors.white
                        primaryColor: PersonalizedColor.mainColor,
                        secondaryColor: Colors.white,
                        inputBackgroundColor: Colors.white,
                        inputTextColor: Colors.black,
                        backgroundColor: PersonalizedColor.backGroundColor,
                        inputMargin: EdgeInsets.fromLTRB(5, 5, 5, 15),
                        //inputTextStyle: TextStyle(color: Colors.grey)
                      ),
                      messages: snapshot.data ?? [],
                      onSendPressed: (message) => ctx.read<chat.ChatBloc>().add(chat.ChatEvent.messageSent(message)),
                      user: currentUser,
                      //showUserAvatars: true,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
