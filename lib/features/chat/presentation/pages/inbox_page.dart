import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/inbox/inbox_bloc.dart';

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
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          state.hasLoginOrLoadingError
              ? Container() // TODO @(backToFrancesco) build retry screen
              : StreamBuilder<List<Room>>(
                  stream: FirebaseChatCore.instance.rooms(),
                  initialData: const [],
                  builder: (context, snapshot) {
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Padding(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child: Text("No chat yet", style: TextStyle(fontSize: 30)),
                      );
                    } else {
                      final activeRooms = snapshot.data!.filter((room) => room.metadata!["active"]! as bool).toList();

                      return Expanded(
                        child: ListView.builder(
                          itemCount: activeRooms.length,
                          itemBuilder: (context, index) {
                            final chat = activeRooms[index];

                            // Metadata handling
                            final id1 = chat.metadata!["id1"] as int;
                            final username1 = chat.metadata!["username1"] as String;
                            final id2 = chat.metadata!["id2"] as int;
                            final username2 = chat.metadata!["username2"] as String;

                            return InboxItem(
                              otherUserId: id1 == state.currentId ? id2 : id1,
                              roomName: id1 == state.currentId ? username2 : username1,
                              lastMessage: "Last Message", // TODO (@alecava41) fix it
                              open: true,
                              onTap: () {}, // TODO (@alecava41) navigate to specific chat page
                              token: state.token,
                            );
                          },
                        ),
                      );
                    }
                  })
        ],
      ),
    );
  }
}