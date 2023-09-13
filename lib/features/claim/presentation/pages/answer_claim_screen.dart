import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/domain/entities/claim_status.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/answer_claim/answer_claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim_info_field.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_expansion_tile.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../../../chat/presentation/pages/chat_page.dart';
import '../widgets/claimed_item_info.dart';

class AnswerClaimScreen extends StatelessWidget {
  final int itemId;
  final int claimId;
  final bool isClaimAlreadyManaged;

  const AnswerClaimScreen({super.key, required this.itemId, required this.claimId, required this.isClaimAlreadyManaged});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.answerClaimTitle, style: const TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: BlocProvider(
            create: (_) => sl<AnswerClaimBloc>()..add(AnswerClaimEvent.contentCreated(itemId)),
            child: BlocConsumer<AnswerClaimBloc, AnswerClaimState>(
              listener: (ctx, state) {
                final claimFailureOrSuccess = state.claimFailureOrSuccess;
                final roomCreationFailureOrSuccess = state.roomCreationFailureOrSuccess;

                if (roomCreationFailureOrSuccess != null) {
                  roomCreationFailureOrSuccess.fold((failure) {
                    showBasicErrorSnackbar(context, failure);
                  }, (room) {
                    Navigator.of(ctx)
                        .push(MaterialPageRoute(builder: (_) => ChatScreen(roomId: room.id, itemId: itemId)));
                  });
                }

                if (claimFailureOrSuccess != null) {
                  claimFailureOrSuccess.fold(
                      (failure) => showBasicErrorSnackbar(context, failure),
                      (updatedItem) => {
                            showBasicSuccessSnackbar(context, AppLocalizations.of(context)!.successAnswerClaim),
                            Navigator.pop(context, updatedItem)
                          });
                }
              },
              builder: (ctx, state) {
                var buttons = Column(
                  children: [
                    PersonalizedLargeGreenButton(
                        isActive: !isClaimAlreadyManaged,
                        onPressed: () => isClaimAlreadyManaged
                            ? null
                            : ctx
                                .read<AnswerClaimBloc>()
                                .add(AnswerClaimEvent.claimDecisionTaken(ClaimStatus.approved, claimId)),
                        text: state.isSubmittingAccept
                            ? const CustomCircularProgress(
                                size: 25,
                                color: Colors.white,
                              )
                            : Text(
                                AppLocalizations.of(context)!.accept,
                                style: const TextStyle(fontSize: 20),
                              )),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                                onPressed: () => isClaimAlreadyManaged
                                    ? null
                                    : ctx
                                        .read<AnswerClaimBloc>()
                                        .add(AnswerClaimEvent.claimDecisionTaken(ClaimStatus.rejected, claimId)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: const StadiumBorder(),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                                child: state.isSubmittingReject
                                    ? const CustomCircularProgress(
                                        size: 25,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        AppLocalizations.of(context)!.decline,
                                        style: const TextStyle(fontSize: 20),
                                      )),
                          ),
                        )
                      ],
                    )
                  ],
                );
                return state.isLoading
                    ? const CustomCircularProgress(size: 100)
                    : state.hasLoadingError
                        ? ErrorPage(
                            onRetry: () => ctx.read<AnswerClaimBloc>().add(AnswerClaimEvent.contentCreated(itemId)))
                        : SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomExpansionTile(
                                    title: Text(
                                      isClaimAlreadyManaged
                                          ? AppLocalizations.of(context)!.answerClaimTutorialClosedManaged
                                          : AppLocalizations.of(context)!.answerClaimTutorialClosedUnmanaged,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          isClaimAlreadyManaged
                                              ? AppLocalizations.of(context)!.answerClaimTutorialOpenManaged
                                              : AppLocalizations.of(context)!.answerClaimTutorialOpenUnmanaged,
                                          style: const TextStyle(color: Colors.black54),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  ClaimInfoField(
                                    title: AppLocalizations.of(context)!.itemClaimedBy(
                                        state.item!.claims!.firstWhere((element) => element.id == claimId).user.username),
                                    content: ClaimedItemInfo(
                                      token: state.token,
                                      item: state.item!,
                                      subject: state.item!.claims!
                                          .firstWhere((element) => element.id == claimId)
                                          .user
                                          .username,
                                      claimIdx: state.item!.claims!.indexWhere((element) => element.id == claimId),
                                      otherUserId:
                                          state.item!.claims!.firstWhere((element) => element.id == claimId).user.id,
                                      otherUserUsername: state.item!.claims!
                                          .firstWhere((element) => element.id == claimId)
                                          .user
                                          .username,
                                      isQuestionScreen: false,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ClaimInfoField(
                                    title: AppLocalizations.of(context)!.yourQuestion,
                                    content: Text(
                                      state.item!.question!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ClaimInfoField(
                                    title: AppLocalizations.of(context)!.answerOf(
                                        state.item!.claims!.firstWhere((element) => element.id == claimId).user.username),
                                    content: Text(
                                      state.item!.claims!.firstWhere((element) => element.id == claimId).answer,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  isClaimAlreadyManaged
                                      ? ClaimInfoField(
                                          title: AppLocalizations.of(context)!.claimStatus,
                                          content: Container(
                                            padding: const EdgeInsets.all(3),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color:
                                                  state.item!.claims!.firstWhere((claim) => claim.id == claimId).status ==
                                                          ClaimStatus.approved
                                                      ? PersonalizedColor.claimAcceptedStatusColor
                                                      : (state.item!.claims!
                                                                  .firstWhere((claim) => claim.id == claimId)
                                                                  .status ==
                                                              ClaimStatus.rejected
                                                          ? PersonalizedColor.claimDeniedStatusColor
                                                          : PersonalizedColor.claimWaitingStatusColor),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 25,
                                                    ),
                                                    RichText(
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: state.item!.claims!
                                                                .firstWhere((claim) => claim.id == claimId)
                                                                .status
                                                                .getTranslatedName(context)
                                                                .toUpperCase(),
                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.info,
                                                      size: 20,
                                                      color: Colors.black54,
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Expanded(
                                                      child: state.item!.claims!
                                                                  .firstWhere((claim) => claim.id == claimId)
                                                                  .status ==
                                                              ClaimStatus.approved
                                                          ? Text(
                                                              AppLocalizations.of(context)!.acceptedAnswerClaim(state
                                                                  .item!.claims!
                                                                  .firstWhere((element) => element.id == claimId)
                                                                  .user
                                                                  .username),
                                                              style: const TextStyle(color: Colors.black54),
                                                            )
                                                          : state.item!.claims!
                                                                      .firstWhere((claim) => claim.id == claimId)
                                                                      .status ==
                                                                  ClaimStatus.rejected
                                                              ? Text(
                                                                  AppLocalizations.of(context)!.rejectedClaim,
                                                                  style: const TextStyle(color: Colors.black54),
                                                                )
                                                              : Text(
                                                                  AppLocalizations.of(context)!.validateClaim,
                                                                  style: const TextStyle(color: Colors.black54),
                                                                ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      : buttons,
                                ],
                              ),
                            ),
                          );
              },
            ),
          ),
        ),
      ),
    );
  }
}
