import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/chat/chat_bloc.dart' as chat;
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_sent.dart' as sent;
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/not_claimed_item_card.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/circular_image_avatar.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<chat.ChatBloc>(
            create: (_) => sl<chat.ChatBloc>()..add(chat.ChatEvent.chatContentCreated(roomId, itemId))),
        BlocProvider<ClaimBloc>(create: (_) => sl<ClaimBloc>())
      ],
      child: BlocBuilder<chat.ChatBloc, chat.ChatState>(
        builder: (ctx, state) {
          if (state.hasLoadingError) {
            return ErrorPage(
              onRetry: () => ctx.read<chat.ChatBloc>().add(chat.ChatEvent.chatContentCreated(roomId, itemId)),
            );
          }

          if (state.isLoading || state.room == null) {
            return const CustomCircularProgress(size: 100);
          }

          final room = state.room!;
          final currentUser = room.users.firstWhere((user) => user.firstName == state.currentUsername);
          final currentUserId = (room.metadata!["username1"]! == state.currentUsername
              ? room.metadata!["id1"]!
              : room.metadata!["id2"]!) as int;

          final otherUser = room.users.firstWhere((user) => user.firstName != state.currentUsername);
          final otherUserId = (room.metadata!["username1"]! != state.currentUsername
              ? room.metadata!["id1"]!
              : room.metadata!["id2"]!) as int;

          final receivedClaim =
              state.item!.claims?.firstWhere((receivedClaim) => receivedClaim.user.username == otherUser.firstName);
          final sentClaim = state.item!.userClaim;

          return WillPopScope(
            onWillPop: () async {
              ctx.read<chat.ChatBloc>().add(const chat.ChatEvent.chatRead());
              return true;
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text(otherUser.firstName!, style: const TextStyle(color: Colors.black, fontSize: 18)),
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
                              item: ReceivedItem(id: state.item!.id, title: state.item!.title),
                              user: ReceivedUser(
                                  id: receivedClaim.user.id,
                                  hasImage: receivedClaim.user.hasImage,
                                  username: receivedClaim.user.username),
                              status: receivedClaim.status,
                              opened: receivedClaim.opened,
                            ),
                          ),
                        )
                      : Container(
                          color: PersonalizedColor.backGroundColor,
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                          child: sentClaim != null
                              ? ClaimedStatusCard(
                                  claim: sent.ClaimSent(
                                      status: sentClaim.status,
                                      id: sentClaim.id,
                                      item: sent.SentItem(
                                          id: state.item!.id, title: state.item!.title, hasImage: state.item!.hasImage)),
                                  token: state.token,
                                )
                              : NotClaimedItemCard(
                                  itemId: state.item!.id,
                                  itemName: state.item!.title,
                                  token: state.token,
                                ),
                        ),
                  Expanded(
                    child: StreamBuilder<List<types.Message>>(
                      initialData: const [],
                      stream: state.messages,
                      builder: (context, snapshot) => Chat(
                        showUserAvatars: true,
                        avatarBuilder: (userId) {
                          final id = userId == currentUser.id ? currentUserId : otherUserId;
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: CircularImage(
                              token: state.token,
                              hasImage: true,
                              imageUrl: "$baseUrl/api/users/$id/image",
                              radius: 20,
                            ),
                          );
                        },
                        theme: DefaultChatTheme(
                          inputBorderRadius: const BorderRadius.all(Radius.circular(60)),
                          inputContainerDecoration: BoxDecoration(
                              border: Border.all(width: 0.1, color: Colors.black54),
                              borderRadius: const BorderRadius.all(Radius.circular(60))),
                          primaryColor: PersonalizedColor.mainColor,
                          secondaryColor: Colors.white,
                          inputBackgroundColor: Colors.white,
                          inputTextColor: Colors.black,
                          backgroundColor: PersonalizedColor.backGroundColor,
                          inputMargin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
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
            ),
          );
        },
      ),
    );
  }
}
