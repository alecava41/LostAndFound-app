import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/inbox_item.dart';

class InboxScreenPage extends StatelessWidget {
  final List<InboxItem> inboxItems;

  final AsyncCallback onRefresh;

  const InboxScreenPage(
      {super.key, required this.inboxItems, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      inboxItems.isEmpty
          ? const Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                "No chat yet",
                style: TextStyle(fontSize: 30),
              ))
          : Expanded(
              child: RefreshIndicator(
                onRefresh: onRefresh,
                child: ListView.builder(
                    itemCount: inboxItems.length,
                    itemBuilder: (context, index) {
                      return inboxItems[index];
                    }),
              ),
            )
    ]);
  }
}
