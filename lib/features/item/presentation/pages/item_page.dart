import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/tutorial/widgets/large_white_button.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/chat/presentation/pages/chat_page.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_question_screen.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/pages/update_item_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/custom_field_container.dart';
import 'package:lost_and_found/features/item/presentation/widgets/item/claimed_item_card.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../../../../core/domain/entities/claim_status.dart';
import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/widgets/image_dialog.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../../domain/entities/item.dart';
import '../bloc/home/home_bloc.dart';
import '../bloc/item/item_bloc.dart';
import '../widgets/item/claim_status_button.dart';
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
          final solveFailureOrSuccess = state.solveFailureOrSuccess;
          final deleteFailureOrSuccess = state.deleteFailureOrSuccess;
          final roomCreationFailureOrSuccess = state.roomCreationFailureOrSuccess;

          if (roomCreationFailureOrSuccess != null) {
            roomCreationFailureOrSuccess.fold((failure) => showBasicErrorSnackbar(context, failure), (room) {
              Navigator.of(ctx).push(MaterialPageRoute(builder: (_) => ChatScreen(roomId: room.id, itemId: itemId)));
            });
          }

          if (solveFailureOrSuccess != null) {
            solveFailureOrSuccess.fold((failure) => showBasicErrorSnackbar(context, failure), (_) {
              showBasicSuccessSnackbar(context, AppLocalizations.of(context)!.successSolveItem);

              // Navigate back to HP + update HP
              ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type));
              context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
              Navigator.pop(context);
              Navigator.pop(context);
            });
          }

          if (deleteFailureOrSuccess != null) {
            deleteFailureOrSuccess.fold((failure) => showBasicErrorSnackbar(context, failure), (_) {
              showBasicSuccessSnackbar(context, AppLocalizations.of(context)!.successDeleteItem);

              // Navigate back to HP + update HP
              ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type));
              context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
              Navigator.pop(context);
              Navigator.pop(context);
            });
          }
        },
        builder: (ctx, state) {
          final isCurrentUserOwner =
              state.isLoading || state.hasLoadingError ? null : state.item!.user.id == state.userId;

          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.itemPageTitle,
                  style: TextStyle(color: Theme.of(context).colorScheme.onBackground)),
              backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
              elevation: 0,
              surfaceTintColor: Theme.of(context).colorScheme.outline,
              shadowColor: Theme.of(context).colorScheme.outline,
              iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              actions: state.isLoading || state.hasLoadingError ? null : _showOwnerMenu(ctx, isCurrentUserOwner!),
            ),
            body: SafeArea(
              child: state.hasLoadingError
                  ? ErrorPage(onRetry: () => ctx.read<ItemBloc>().add(ItemEvent.itemCreated(itemId)))
                  : state.isLoading
                      ? const CustomCircularProgress(size: 100)
                      : SingleChildScrollView(
                          child: Column(
                            children: () {
                              var widgetList = <Widget>[
                                ImageItem(
                                  token: state.token,
                                  itemId: state.item!.id,
                                ),
                                const Divider(
                                  height: 0,
                                ),
                                InfoItem(
                                  title: state.item!.title,
                                  position: state.item!.address,
                                  date: state.item!.insertion,
                                  category: state.item!.category.name,
                                  question: state.item!.question,
                                  type: state.item!.type,
                                  coordinates: state.item!.position,
                                ),
                              ];

                              if (isCurrentUserOwner!) {
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
        },
      ),
    );
  }

  List<Widget>? _showOwnerMenu(BuildContext ctx, bool isCurrentUserOwner) {
    if (isCurrentUserOwner) {
      return [
        PopupMenuButton<String>(
          surfaceTintColor: Theme.of(ctx).extension<CustomColors>()!.background2,
          iconSize: 30,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'opt1',
              child: Text(AppLocalizations.of(context)!.itemMenu1),
            ),
            PopupMenuItem<String>(
              value: 'opt2',
              child: Text(AppLocalizations.of(context)!.itemMenu2),
            ),
            PopupMenuItem<String>(
              value: 'opt3',
              child: Text(
                AppLocalizations.of(context)!.itemMenu3,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          ],
          onSelected: (String value) async {
            switch (value) {
              case 'opt1':
                showDialog(
                  context: ctx,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
                      backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                      title: Text(AppLocalizations.of(context)!.itemMenu1),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(AppLocalizations.of(context)!.markAsSolvedDialogDescription),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        PersonalizedLargeGreenButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            text: Text(
                              AppLocalizations.of(context)!.notMarkAsSolved,
                              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                            )),
                        PersonalizedLargeWhiteButton(
                          onPressed: () {
                            ctx.read<ItemBloc>().add(const ItemEvent.itemSolved());
                          },
                          text: Text(AppLocalizations.of(context)!.itemMenu1,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              )),
                        )
                      ],
                    );
                  },
                );
                break;
              case 'opt3':
                showDialog(
                  context: ctx,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      surfaceTintColor: Theme.of(context).extension<CustomColors>()!.background2,
                      backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
                      title: Text(
                        AppLocalizations.of(context)!.itemMenu3,
                        style: TextStyle(color: Theme.of(context).colorScheme.error, fontWeight: FontWeight.bold),
                      ),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(AppLocalizations.of(context)!.deleteReportDialogDescription),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        PersonalizedLargeGreenButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            text: Text(
                              AppLocalizations.of(context)!.noDeleteReport,
                              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                            )),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Theme.of(context).colorScheme.error,
                                    width: 0.5,
                                  ),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    ctx.read<ItemBloc>().add(const ItemEvent.itemDeleted());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.errorContainer,
                                    shape: const StadiumBorder(),
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                  ).copyWith(
                                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Theme.of(context).colorScheme.onErrorContainer;
                                        }
                                        return Colors.transparent;
                                      },
                                    ),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.itemMenu3,
                                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        )
                      ],
                    );
                  },
                );
                break;
              case 'opt2':
                final changes =
                    await Navigator.push<bool>(ctx, MaterialPageRoute(builder: (_) => UpdateItemScreen(itemId: itemId)));
                if (changes != null && changes && ctx.mounted) {
                  ctx.read<ItemBloc>().add(ItemEvent.itemCreated(itemId));
                }
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
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomFieldContainer(
                title: AppLocalizations.of(context)!.lostBy,
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                ImageDialogWidget(
                                  token: token,
                                  imageUrl: userUrl,
                                  errorImage: Image.asset(
                                    noUserImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                  child: CircularImage(
                                    imageUrl: userUrl,
                                    radius: 25,
                                    token: token,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Text(
                                      owner.username,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
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
                              backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                              side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.5),
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                            ).copyWith(
                              overlayColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Theme.of(context).colorScheme.onTertiaryContainer.withOpacity(0.2);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            onPressed: () {
                              context.read<ItemBloc>().add(ItemEvent.createChatRoom(
                                    owner.id,
                                    owner.username,
                                  ));
                            },
                            child: Text(
                              AppLocalizations.of(context)!.sendMessage,
                              style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onTertiaryContainer),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> _showOwnerFoundItemWidgets(BuildContext context, List<ClaimReceived> claims, String token, int itemId) {
    return [
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFieldContainer(
              title: AppLocalizations.of(context)!.claimsForItem,
              content: claims.isEmpty
                  ? Center(
                      child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.noClaimsForItem,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const Icon(
                          Icons.connect_without_contact,
                          size: 50,
                        )
                      ],
                    ))
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: claims.length,
                      itemBuilder: (context, index) {
                        final claim = claims[index];

                        return Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: ClaimedItemCard(
                            token: token,
                            opened: claim.opened,
                            userId: claim.user.id,
                            username: claim.user.username,
                            onTap: () async {
                              context.read<ItemBloc>().add(ItemEvent.claimRead(claim.id));
                              final updatedItem = await Navigator.push<Item?>(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => AnswerClaimScreen(
                                    itemId: itemId,
                                    claimId: claim.id,
                                    isClaimAlreadyManaged: claim.status != ClaimStatus.pending,
                                  ),
                                ),
                              );

                              if (updatedItem != null && context.mounted) {
                                context.read<ItemBloc>().add(ItemEvent.claimUpdated(updatedItem));

                                context.read<HomeBloc>().add(const HomeEvent.homeSectionRefreshed(ItemType.found));
                              }
                            },
                            status: claim.status,
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      const Divider(
        height: 0,
      ),
    ];
  }

  List<Widget> _showGenericFoundItemWidgets(
      BuildContext context, ClaimSent? claim, String token, User owner, int itemId) {
    final userUrl = "$baseUrl/api/users/${owner.id}/image";

    return [
      Column(
        children: [
          claim != null
              ? Container(
                  padding: const EdgeInsets.all(8),
                  child: ClaimStatusButton(
                    owner: owner.username,
                    status: claim.status,
                    itemId: itemId,
                    isClickable: false,
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                            ),
                          ),
                          onPressed: () async {
                            final updatedItem = await Navigator.push<Item?>(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => AnswerQuestionScreen(
                                  itemId: itemId,
                                  isClaimAlreadyTaken: claim?.answer != null,
                                ),
                              ),
                            );

                            if (updatedItem != null && context.mounted) {
                              context.read<ItemBloc>().add(ItemEvent.claimUpdated(updatedItem));
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.connect_without_contact,
                                size: 18.5,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(AppLocalizations.of(context)!.claimItemButton,
                                  style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onPrimary)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomFieldContainer(
                title: AppLocalizations.of(context)!.foundBy,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              CircularImage(
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
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
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
                            backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                            side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.5),
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                          ).copyWith(
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Theme.of(context).colorScheme.onTertiaryContainer.withOpacity(0.2);
                                }
                                return Colors.transparent;
                              },
                            ),
                          ),
                          onPressed: () {
                            context.read<ItemBloc>().add(ItemEvent.createChatRoom(
                                  owner.id,
                                  owner.username,
                                ));
                          },
                          child: Text(
                            AppLocalizations.of(context)!.sendMessage,
                            style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onTertiaryContainer),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ];
  }
}
