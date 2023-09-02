
import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class NotClaimedItemCard extends StatelessWidget {


  const NotClaimedItemCard({

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: PersonalizedColor.openedColor,
        child: InkWell(
          splashColor: PersonalizedColor.splashGreyColor,
          onTap: () => {
            /* TODO (@alecava41 add logic)
            context.read<BadgeBloc>().add(const BadgeEvent.sentClaimRead()),
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => AnswerQuestionScreen(
                          itemId: claim.item.id,
                          isClaimAlreadyTaken: true,
                        )))*/
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: PersonalizedColor.borderColorOpened,
                width: 0.3,
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
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
                Expanded(
                  child: SizedBox(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Text(
                              //claim.item.title,
                              "Item's name",
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}