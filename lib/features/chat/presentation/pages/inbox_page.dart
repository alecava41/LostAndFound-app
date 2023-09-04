import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/inbox/inbox_bloc.dart';
import 'package:lost_and_found/features/chat/presentation/pages/chat_page.dart';

import '../../../../core/presentation/widgets/error_page.dart';
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
            height: 90,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 0, 10),
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 30),
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
                      onRetry: () => ctx.read<InboxBloc>().add(const InboxEvent.inboxContentCreated()),
                    )
                  : StreamBuilder<List<Room>>(
                      stream: state.userRooms,
                      initialData: const [],
                      builder: (context, snapshot) {
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          // TODO (@backToFrancesco) can we do something better?
                          return const Padding(
                            padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                            child: Text("No chat yet", style: TextStyle(fontSize: 30)),
                          );
                        } else {
                          final activeRooms = snapshot.data!.filter((room) => room.metadata!["active"]! as bool).toList();

                          if (activeRooms.isEmpty) {
                            // TODO (@backToFrancesco) can we do something better?
                            return const Padding(
                              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                              child: Text("No chat yet", style: TextStyle(fontSize: 30)),
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
                    )
        ],
      ),
    );
  }
}
