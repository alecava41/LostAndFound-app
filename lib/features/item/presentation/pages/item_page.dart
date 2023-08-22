import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_question_screen.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/pages/update_item_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/custom_field_container.dart';
import 'package:lost_and_found/features/item/presentation/widgets/item/claimed_item_card.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../core/domain/entities/claim_status.dart';
import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../../domain/entities/item.dart';
import '../bloc/home/home_bloc.dart';
import '../bloc/item/item_bloc.dart';
import '../widgets/item/image_item.dart';
import '../widgets/item/info_item.dart';
import '../widgets/notifications/circular_image_avatar.dart';

class ItemScreen extends StatelessWidget {
  final int itemId;

  const ItemScreen({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemBloc>(
      create: (_) => sl<ItemBloc>()..add(ItemEvent.itemCreated(itemId)),
      child: BlocConsumer<ItemBloc, ItemState>(
        listener: (ctx, state) {
          final loadFailureOrSuccess = state.loadFailureOrSuccess;
          final solveFailureOrSuccess = state.solveFailureOrSuccess;
          final deleteFailureOrSuccess = state.deleteFailureOrSuccess;

          if (loadFailureOrSuccess != null) {
            loadFailureOrSuccess.fold((failure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                padding: const EdgeInsets.all(30),
                backgroundColor: Colors.red,
                content: Text(
                    failure.maybeWhen<String>(
                        genericFailure: () => 'Server error. Please try again later.',
                        networkFailure: () => 'No internet connection available. Check your internet connection.',
                        validationFailure: (reason) => reason!,
                        orElse: () => "Unknown error"),
                    style: const TextStyle(fontSize: 20)),
              ));
              // Error => navigate back to previous page
              Navigator.pop(ctx);
            }, (_) {});
          }

          if (solveFailureOrSuccess != null) {
            solveFailureOrSuccess.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        padding: const EdgeInsets.all(30),
                        backgroundColor: Colors.red,
                        content: Text(
                            failure.maybeWhen<String>(
                                genericFailure: () => 'Server error. Please try again later.',
                                networkFailure: () => 'No internet connection available. Check your internet connection.',
                                validationFailure: (reason) => reason!,
                                orElse: () => "Unknown error"),
                            style: const TextStyle(fontSize: 20)),
                      ),
                    ), (_) {
              // Navigate back to HP + update HP
              ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type));
              context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
              Navigator.pop(context);
            });
          }

          if (deleteFailureOrSuccess != null) {
            deleteFailureOrSuccess.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        padding: const EdgeInsets.all(30),
                        backgroundColor: Colors.red,
                        content: Text(
                            failure.maybeWhen<String>(
                                genericFailure: () => 'Server error. Please try again later.',
                                networkFailure: () => 'No internet connection available. Check your internet connection.',
                                validationFailure: (reason) => reason!,
                                orElse: () => "Unknown error"),
                            style: const TextStyle(fontSize: 20)),
                      ),
                    ), (_) {
              // Navigate back to HP + update HP
              ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type));
              context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
              Navigator.pop(context);
            });
          }
        },
        builder: (ctx, state) {
          if (state.isLoading) {
            return const CustomCircularProgress(size: 100);
          } else if (state.item != null) {
            final isCurrentUserOwner = state.item!.user.id == state.userId;

            return SafeArea(
              top: false,
              child: Scaffold(
                backgroundColor: PersonalizedColor.backGroundColor,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(color: Colors.black),
                  actions: _showOwnerMenu(ctx, isCurrentUserOwner),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: () {
                      var widgetList = <Widget>[
                        ImageItem(
                          token: state.token,
                          itemId: state.item!.id,
                          hasImage: state.item!.hasImage,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        ),
                        InfoItem(
                          title: state.item!.title,
                          position: state.item!.address,
                          date: state.item!.insertion,
                          category: state.item!.category.name,
                          question: state.item!.question,
                          type: state.item!.type,
                        ),
                      ];

                      if (isCurrentUserOwner) {
                        if (state.item!.type == ItemType.found) {
                          widgetList += _showOwnerFoundItemWidgets(
                              ctx, state.item!.claims != null ? state.item!.claims! : [], state.token, itemId);
                        }
                      } else {
                        if (state.item!.type == ItemType.lost) {
                          widgetList += _showGenericLostItemWidgets(ctx, state.token, state.item!.user);
                        } else {
                          widgetList += _showGenericFoundItemWidgets(
                              ctx, state.item!.userClaim, state.token, state.item!.user, itemId);
                        }
                      }

                      return widgetList;
                    }(),
                  ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  List<Widget>? _showOwnerMenu(BuildContext ctx, bool isCurrentUserOwner) {
    if (isCurrentUserOwner) {
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
          onSelected: (String value) async {
            // Action to be performed when a menu item is selected
            switch (value) {
              case 'opt1':
                ctx.read<ItemBloc>().add(const ItemEvent.itemSolved());
                break;
              case 'opt2':
                final changes =
                    await Navigator.push<bool>(ctx, MaterialPageRoute(builder: (_) => UpdateItemScreen(itemId: itemId)));
                if (changes != null && changes && ctx.mounted) {
                  ctx.read<ItemBloc>().add(ItemEvent.itemCreated(itemId));
                }
                break;
              case 'opt3':
                ctx.read<ItemBloc>().add(const ItemEvent.itemDeleted());
                break;
            }
          },
        )
      ];
    } else {
      return null;
    }
  }

  List<Widget> _showGenericLostItemWidgets(BuildContext context, String token, User owner) {
    final userUrl = "$baseUrl/api/users/${owner.id}/image";

    return [
      
      Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomFieldContainer(
            title: "Lost by",
            content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  // TODO (@backToFrancesco) username in two lines because "send a message" is too large
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            owner.hasImage
                                ? ImageDialogWidget(
                                    token: token,
                                    imageUrl: userUrl,
                                    errorAsset: 'assets/images/no-user.jpg',
                                    child: CircularImage(
                                      hasImage: owner.hasImage,
                                      imageUrl: userUrl,
                                      radius: 25,
                                      token: token,
                                    ),
                                  )
                                : CircularImage(
                                    hasImage: owner.hasImage,
                                    imageUrl: userUrl,
                                    radius: 25,
                                    token: token,
                                  ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Text(
                                  owner.username,
                                  style: const TextStyle(fontSize: 16),
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
                        onPressed: () {}, // TODO (@alecava41) navigate to chat
                        child: const Text(
                          'Send a message',
                          style: TextStyle(fontSize: 14, color: PersonalizedColor.mainColor),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
      const Divider(
        color: Colors.grey,
        thickness: 1,
        height: 0,
      ),
    ];
  }

  List<Widget> _showOwnerFoundItemWidgets(BuildContext context, List<ClaimReceived> claims, String token, int itemId) {
    return [
      const SizedBox(
        height: 30,
      ),
      const Divider(
        color: Colors.grey,
        thickness: 1,
        height: 0,
      ),
      Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
            child: Row(
              children: [
                Icon(
                  Icons.connect_without_contact,
                  size: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Text(
                  "Item claimed by",
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
          ),
          claims.isEmpty
              ? const Center(
                  child: Text(
                  "No claims received",
                  style: TextStyle(fontSize: 18),
                ))
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: claims.length,
                  itemBuilder: (context, index) {
                    final claim = claims[index];

                    return Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        // TODO if claim already managed it would be better to put the status even in the card
                        child: ClaimedItemCard(
                          token: token,
                          opened: claim.opened,
                          userId: claim.user.id,
                          hasImage: claim.user.hasImage,
                          username: claim.user.username,
                          onTap: () async {
                            context.read<ItemBloc>().add(ItemEvent.claimRead(claim.id));
                            final claimStatus = await Navigator.push<bool?>(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => AnswerClaimScreen(
                                          itemId: itemId,
                                          claimId: claim.id,
                                          isClaimAlreadyManaged: claim.status != ClaimStatus.pending,
                                        )));

                            if (claimStatus != null && claimStatus && context.mounted) {
                              context.read<ItemBloc>().add(const ItemEvent.itemRefreshed());
                            }
                          },
                        ));
                  },
                ),
        ]),
      ),
      const Divider(
        color: Colors.grey,
        thickness: 1,
        height: 0,
      ),
    ];
  }

  List<Widget> _showGenericFoundItemWidgets(
      BuildContext context, ClaimSent? claim, String token, User owner, int itemId) {
    final userUrl = "$baseUrl/api/users/${owner.id}/image";

    return [
      const SizedBox(
        height: 20,
      ),
      claim != null
          ? Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: claim.status == ClaimStatus.approved
                      ? PersonalizedColor.claimAcceptedStatusColor
                      : (claim.status == ClaimStatus.pending
                          ? PersonalizedColor.claimWaitingStatusColor
                          : PersonalizedColor.claimDeniedStatusColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.connect_without_contact,
                          size: 25,
                        ),
                        const SizedBox(width: 5),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "Claim status ",
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                              TextSpan(
                                text: claim.status.name.toUpperCase(),
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // TODO even if claim already sent, make it clickable and show answer on AnswerQuestionScreen
                    const SizedBox(
                      height: 5,
                    ),
                    claim.status == ClaimStatus.approved
                        ? Text(
                            "Your claim has been accepted! Get in touch with ${owner.username} through the chat to arrange the item's return.")
                        : claim.status == ClaimStatus.rejected
                            ? Text(
                                "Unfortunately, your claim has been rejected by ${owner.username}, as the response you provided was not correct.")
                            : Text("Wait for ${owner.username} to validate to your claim.")
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                      ),
                    ),
                    onPressed: () async {
                      final claimStatus = await Navigator.push<bool?>(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => AnswerQuestionScreen(
                            itemId: itemId,
                            isClaimAlreadyTaken: claim?.answer != null,
                          ),
                        ),
                      );

                      if (claimStatus != null && claimStatus && context.mounted) {
                        context.read<ItemBloc>().add(const ItemEvent.itemRefreshed());
                      }
                    },
                    child: const Text(
                      'Claim the item',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ]),
            ),
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
                const Text(
                  "Found by",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                // TODO (@backToFrancesco) username is in two lines because "send a message" is too large
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          owner.hasImage
                              ? ImageDialogWidget(
                                  token: token,
                                  imageUrl: userUrl,
                                  errorAsset: 'assets/images/no-user.jpg',
                                  child: CircularImage(
                                    imageUrl: userUrl,
                                    radius: 40,
                                    token: token,
                                    hasImage: owner.hasImage,
                                  ),
                                )
                              : CircularImage(
                                  imageUrl: userUrl,
                                  radius: 40,
                                  token: token,
                                  hasImage: owner.hasImage,
                                ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child: Text(
                                owner.username,
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
                        // TODO (@alecava41) navigate to chat
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
      ),
      const SizedBox(
        height: 10,
      ),
    ];
  }
}
