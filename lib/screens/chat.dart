import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/widgets/claimed_item_card.dart';
import 'package:lost_and_found/widgets/claimed_status_card.dart';

// For the testing purposes, you should probably use https://pub.dev/packages/uuid.
String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

class ChatScreen extends StatefulWidget {
  final String userTo;
  final String userToImage;
  final bool userHasDoneClaim; // shows claim status
  final bool
      userHasRecivedClaim; // shows a claim to respond or already responded

  const ChatScreen(
      {super.key,
      required this.userTo,
      required this.userToImage,
      required this.userHasDoneClaim,
      required this.userHasRecivedClaim});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [
    types.TextMessage(
      author: const types.User(
        id: "sadsadsad",
      ),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: "Hola i'm Maria",
    ),
  ];
  final _user = const types.User(
      id: '82091008-a484-4a89-ae75-a22bf8d6f3ac', firstName: "Jon");

  @override
  Widget build(BuildContext context) {
    var showClaim = widget.userHasRecivedClaim
        ? Container(
            color: PersonalizedColor.backGroundColor,
            padding: EdgeInsets.fromLTRB(8, 8, 8, 2),
            child: ClaimedItemCard(
              itemImagePath: "assets/images/iphone.png",
              itemName: "Iphone 12",
              userImagePath: widget.userToImage,
              user: widget.userTo,
              onlyUser: false,
              open: true,
              claimAnswered: true,
              onlyItem: true,
            ))
        : widget.userHasDoneClaim
            ? Container(
                color: PersonalizedColor.backGroundColor,
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                child: ClaimedStatusCard(
                  itemImagePath: "assets/images/iphone.png",
                  itemName: "Iphone 12",
                  userImagePath: widget.userToImage,
                  user: widget.userTo, claimStatus: 'ACCEPTED',
                ))
            : Container();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: InkWell(
          onTap: () => showImageDialog(widget.userToImage),
          splashColor: Colors.grey, // Specify the splashColor here
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  widget.userTo,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                const SizedBox(width: 6),
                CircularImage(
                  imagePath: widget.userToImage,
                  radius: 22,
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
          showClaim,
          Expanded(
            child: Chat(
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
              messages: _messages,
              onSendPressed: _handleSendPressed,
              user: _user,
              //showUserAvatars: true,
            ),
          ),
        ],
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.TextMessage message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void showImageDialog(userImagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(userImagePath),
          ),
        );
      },
    );
  }
}
