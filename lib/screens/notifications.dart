import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/notification.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  late List<CustomNotification> notifications;

  @override
  void initState() {
    super.initState();
    setState(() {
      notifications = [
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: true,
          onTap: () => {print("GO TO ...")},
        ),
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: false,
          onTap: () => {print("GO TO ...")},
        ),
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: true,
          onTap: () => {print("GO TO ...")},
        ),
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: true,
          onTap: () => {print("GO TO ...")},
        ),
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: true,
          onTap: () => {print("GO TO ...")},
        ),
        CustomNotification(
          userPhotoimagePath: "assets/images/occhiali.png",
          fromUser: "Maria",
          notificationType: 'objfound',
          open: true,
          onTap: () => {print("GO TO ...")},
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalizedColor.backGroundColor,
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        top: false,
        child: RefreshIndicator(
          onRefresh: refreshPage,
          child: notifications.isEmpty
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  child: const SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: 50,
                        ),
                        Icon(
                          Icons.notifications_none,
                          size: 80,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "No notification yet",
                          style: TextStyle(fontSize: 25),
                        ),
                      ]),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return notifications[index];
                  },
                ),
        ),
      ),
    );
  }

  Future<void> refreshPage() async {
    // Simulate an asynchronous operation for page refreshing
    await Future.delayed(Duration(seconds: 2));
    CustomNotification newNotificaion = CustomNotification(
      userPhotoimagePath: "assets/images/no-item.png",
      fromUser: "Maria",
      notificationType: 'objfound',
      open: false,
      onTap: () => {print("GO TO ...")},
    );
    setState(() {
      notifications.insert(0, newNotificaion);
    });
  }
}
