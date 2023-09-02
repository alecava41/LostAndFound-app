import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../utils/colors.dart';

class InboxItem extends StatelessWidget {
  final int otherUserId;
  final String token;
  final String roomName;
  final String lastMessage;
  final bool opened;
  final VoidCallback onTap;

  const InboxItem({
    super.key,
    required this.otherUserId,
    required this.token,
    required this.roomName,
    required this.lastMessage,
    required this.opened,
    required this.onTap,
  });

  // TODO (@backToFrancesco) insert name/image of the item somewhere

  @override
  Widget build(BuildContext context) {
    return Material(
      color: !opened ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
      child: InkWell(
        onTap: onTap,
        splashColor: !opened ? PersonalizedColor.primarySwatch.shade500 : Colors.grey.withOpacity(0.4),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CircularImage(
                                token: token,
                                imageUrl: "$baseUrl/api/users/$otherUserId/image",
                                hasImage: true,
                                radius: 25,
                                errorAsset: "assets/images/no-user.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  roomName,
                                  style: const TextStyle(fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  lastMessage,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 12, 4),
                  child: Container(
                    width: 80,
                    //color: Colors.amber,
                    child: Column(
                      children: [
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: /*
                              TODO (@alecava41): image
                              claim.item.hasImage
                                  ? CachedNetworkImage(
                                      imageUrl: "$baseUrl/api/items/${claim.item.id}/image",
                                      fit: BoxFit.cover,
                                      httpHeaders: {
                                        "Authorization": "Bearer $token",
                                      },
                                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                                          const CustomCircularProgress(size: 35),
                                      errorWidget: (context, url, error) => Image.asset("assets/images/no-item.png"),
                                      imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
                                    )
                                  : */Image.asset("assets/images/no-item.png"),
                            ),
                          ),
                          Text("Item's name", style: TextStyle(color: Colors.black45, overflow: TextOverflow.ellipsis, fontSize: 12),),
                          
                      ],
                      
                    ),
                  ),
                ),
               
              ],
              
            ),
            Divider(height: 1,),
          ],
        ),
      ),
      
    );
  }
}
