import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/chat/chat_bloc.dart' as chat;
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_sent.dart' as sent;
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/not_claimed_item_card.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/circular_image_avatar.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
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
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                elevation: 0,
                surfaceTintColor: Theme.of(context).colorScheme.outline,
                shadowColor: Theme.of(context).colorScheme.outline,
                iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              ),
              body: SafeArea(
                child: ErrorPage(
                    onRetry: () => ctx.read<chat.ChatBloc>().add(chat.ChatEvent.chatContentCreated(roomId, itemId))),
              ),
            );
          }

          if (state.isLoading || state.room == null) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                elevation: 0,
                surfaceTintColor: Theme.of(context).colorScheme.outline,
                shadowColor: Theme.of(context).colorScheme.outline,
                iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              ),
              body: const SafeArea(
                child: CustomCircularProgress(size: 100),
              ),
            );
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
                backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                elevation: 0,
                surfaceTintColor: Theme.of(context).colorScheme.outline,
                shadowColor: Theme.of(context).colorScheme.outline,
                title: Text(otherUser.firstName!,
                    style: TextStyle(color: Theme.of(context).colorScheme.onBackground, fontSize: 18)),
                iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    receivedClaim != null
                        ? Container(
                            color: Theme.of(context).colorScheme.background,
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                            child: ClaimedItemCard(
                              isItemResolved: state.item!.resolved,
                              token: state.token,
                              claim: ClaimReceived(
                                id: receivedClaim.id,
                                item: ReceivedItem(id: state.item!.id, title: state.item!.title),
                                user: ReceivedUser(id: receivedClaim.user.id, username: receivedClaim.user.username),
                                status: receivedClaim.status,
                                opened: receivedClaim.opened,
                              ),
                            ),
                          )
                        : Container(
                            color: Theme.of(context).colorScheme.background,
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                            child: sentClaim != null
                                ? ClaimedStatusCard(
                                    claim: sent.ClaimSent(
                                        status: sentClaim.status,
                                        id: sentClaim.id,
                                        item: sent.SentItem(id: state.item!.id, title: state.item!.title)),
                                    token: state.token,
                                    isItemSolved: state.item!.resolved,
                                  )
                                : NotClaimedItemCard(
                                    isItemSolved: state.item!.resolved,
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
                                imageUrl: "$baseUrl/api/users/$id/image",
                                radius: 20,
                              ),
                            );
                          },
                          theme: DefaultChatTheme(
                            inputBorderRadius: const BorderRadius.all(Radius.circular(60)),
                            inputContainerDecoration: BoxDecoration(
                              color: Theme.of(context).extension<CustomColors>()!.background2,
                                border: Border.all(
                                    width: 0.1, color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor!),
                                borderRadius: const BorderRadius.all(Radius.circular(60))),
                            primaryColor: Theme.of(context).colorScheme.onTertiary,
                            secondaryColor: Theme.of(context).colorScheme.tertiaryContainer,
                            receivedMessageBodyTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
                            sentMessageBodyTextStyle: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onBackground),
                            inputBackgroundColor: Theme.of(context).colorScheme.background,
                            inputTextColor: Theme.of(context).colorScheme.onBackground,
                            backgroundColor: Theme.of(context).colorScheme.background,
                            inputMargin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
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
            ),
          );
        },
      ),
    );
  }
}
