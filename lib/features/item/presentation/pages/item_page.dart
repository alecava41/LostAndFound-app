import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../bloc/item/item_bloc.dart';
import '../widgets/item/image_item.dart';
import '../widgets/item/info_item.dart';
import '../widgets/notifications/circular_image_avatar.dart';

class ItemScreen extends StatelessWidget {
  final int id;

  const ItemScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemBloc>(
      create: (_) => sl<ItemBloc>()..add(ItemEvent.itemCreated(id)),
      child: BlocConsumer<ItemBloc, ItemState>(
        listener: (ctx, state) {},
        builder: (ctx, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator(value: null); // TODO modify
          } else if (state.item != null) {
            return SafeArea(
              top: false,
              child: Scaffold(
                backgroundColor: PersonalizedColor.backGroundColor,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(color: Colors.black),
                  actions: () {
                    if (state.item!.user.id == state.userId) {
                      return [
                        PopupMenuButton<String>(
                          iconSize: 30,
                          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'opt1',
                              child: Text('Mark as solved'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'opt2',
                              child: Text('Modify'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'opt3',
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                          onSelected: (String value) {
                            // Action to be performed when a menu item is selected
                            switch (value) {
                              case 'opt1':
                                // TODO send request and close page (?)
                                break;
                              case 'opt2':
                                // TODO open "modify" page
                                break;
                              case 'opt3':
                                // TODO send request and close page
                                break;
                            }
                          },
                        )
                      ];
                    } else {
                      return null;
                    }
                  }(),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: () {
                      var widgetList = <Widget>[
                        ImageItem(token: state.token, itemId: state.item!.id),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        ),
                        InfoItem(
                          title: state.item!.title,
                          position: state.item!.position,
                          date: state.item!.insertion,
                          category: state.item!.category.name,
                          isFound: false,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        )
                      ];

                      if (state.userId != state.item!.user.id) {
                        widgetList += [
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.item!.type == ItemType.lost ? "Lost by" : "Found by",
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Row(
                                            children: [
                                              () {
                                                final url =
                                                    "http://localhost:5000/api/users/${state.item!.user.id}/image";
                                                return ImageDialogWidget(
                                                  token: state.token,
                                                  imageUrl: url,
                                                  child: CircularImage(
                                                    imageUrl: url,
                                                    radius: 40,
                                                    token: state.token,
                                                  ),
                                                );
                                              }(),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                                  child: Text(
                                                    state.item!.user.username,
                                                    style: const TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            side: const BorderSide(color: PersonalizedColor.mainColor, width: 1.5),
                                            shape: const StadiumBorder(),
                                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                                          ),
                                          onPressed: () {
                                            // TODO move to chat!
                                          },
                                          child: const Text(
                                            'Send a message',
                                            style: TextStyle(fontSize: 18, color: PersonalizedColor.mainColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          )
                        ];
                      }

                      return widgetList;
                    }(),
                  ),
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator(
              value: null,
            ); // TODO handle case when item is not available
          }
        },
      ),
    );
  }
}
