import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/inbox/inbox_bloc.dart';
import 'package:lost_and_found/features/chat/presentation/pages/chat_page.dart';
import 'package:lost_and_found/utils/screen_size.dart';

import '../../../../core/presentation/widgets/error_page.dart';
import '../../../../core/presentation/widgets/no_content_page.dart';
import '../widgets/inbox/inbox_item.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InboxBloc, InboxState>(
      builder: (ctx, state) => Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
              child: Text(
                AppLocalizations.of(context)!.message(2),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          state.isLoading
              ? const Expanded(child: CustomCircularProgress(size: 100))
              : state.hasLoginOrLoadingError
                  ? ErrorPage(
                      hasBottomBar: true,
                      onRetry: () => ctx.read<InboxBloc>().add(const InboxEvent.inboxContentCreated()),
                    )
                  : StreamBuilder<List<Room>>(
                      stream: state.userRooms,
                      initialData: const [],
                      builder: (context, snapshot) {
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return NoContentPage(
                            hasBottomBar:
                                ScreenSize.isBigSmartphoneDevice(context) || ScreenSize.isMediumSmartphoneDevice(context),
                            image: "assets/images/no-chat.png",
                            title: AppLocalizations.of(context)!.noContentInboxTitle,
                            subtitle: AppLocalizations.of(context)!.noContentInboxSubtitle,
                          );
                        } else {
                          final activeRooms = snapshot.data!.filter((room) => room.metadata!["active"]! as bool).toList();

                          if (activeRooms.isEmpty) {
                            return NoContentPage(
                              hasBottomBar: true,
                              image: "assets/images/no-chat.png",
                              title: AppLocalizations.of(context)!.noContentInboxTitle,
                              subtitle: AppLocalizations.of(context)!.noContentInboxSubtitle,
                            );
                          }

                          return Expanded(
                            child: ListView.builder(
                              itemCount: activeRooms.length,
                              itemBuilder: (context, index) {
                                final room = activeRooms[index];

                                // Metadata handling
                                final id1 = room.metadata!["id1"] as int;
                                final username1 = room.metadata!["username1"] as String;
                                final id2 = room.metadata!["id2"] as int;
                                final username2 = room.metadata!["username2"] as String;

                                final lastMessageId = room.metadata!["lastMessageId"] as String?;
                                bool hasReadLastMessage = true;

                                if (lastMessageId != null) {
                                  hasReadLastMessage =
                                      (room.metadata!["last-${state.currentId}"] as String?) == lastMessageId;
                                }

                                final itemId = int.parse(room.name!.split('-')[1]);
                                final itemName = room.metadata!["title"] as String;

                                return InboxItem(
                                  otherUserId: id1 == state.currentId ? id2 : id1,
                                  roomName: id1 == state.currentId ? username2 : username1,
                                  lastMessage: room.metadata!["lastMessage"] ?? "",
                                  opened: hasReadLastMessage,
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => ChatScreen(roomId: room.id, itemId: itemId),
                                      ),
                                    );
                                  },
                                  token: state.token,
                                  itemId: itemId,
                                  itemTitle: itemName,
                                );
                              },
                            ),
                          );
                        }
                      },
                    ),
        ],
      ),
    );
  }
}
