import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/domain/entities/claim_status.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/answer_claim/answer_claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim_info_field.dart';

import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../widgets/claimed_item_info.dart';

class AnswerClaimScreen extends StatelessWidget {
  final int itemId;
  final int claimId;
  final bool isClaimAlreadyManaged;

  const AnswerClaimScreen({super.key, required this.itemId, required this.claimId, required this.isClaimAlreadyManaged});

  // TODO (@backToFrancesco) if claim already managed, it would be better to put response there

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Answer to claim", style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: BlocProvider(
              create: (_) => sl<AnswerClaimBloc>()
                ..add(AnswerClaimEvent.contentCreated(itemId)),
              child: BlocConsumer<AnswerClaimBloc, AnswerClaimState>(
                listener: (ctx, state) {
                  final loadFailureOrSuccess = state.loadFailureOrSuccess;
                  final claimFailureOrSuccess = state.claimFailureOrSuccess;

                  if (loadFailureOrSuccess != null) {
                    loadFailureOrSuccess.fold(
                        (failure) => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  padding: const EdgeInsets.all(30),
                                  backgroundColor: Colors.red,
                                  content: Text(
                                      failure.maybeWhen<String>(
                                          genericFailure: () =>
                                              'Server error. Please try again later.',
                                          networkFailure: () =>
                                              'No internet connection available. Check your internet connection.',
                                          orElse: () => "Unknown error"),
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              ),
                              Navigator.pop(ctx)
                            },
                        (_) => {});
                  }

                  if (claimFailureOrSuccess != null) {
                    claimFailureOrSuccess.fold(
                        (failure) => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  padding: const EdgeInsets.all(30),
                                  backgroundColor: Colors.red,
                                  content: Text(
                                      failure.maybeWhen<String>(
                                          genericFailure: () =>
                                              'Server error. Please try again later.',
                                          networkFailure: () =>
                                              'No internet connection available. Check your internet connection.',
                                          orElse: () => "Unknown error"),
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              )
                            },
                        (_) => {
                              // boolean argument denotes outcome of claim (Y => claim managed, N/null => claim not managed)
                              Navigator.pop(context, true)
                            });
                  }
                },
                builder: (ctx, state) {
                  var buttons = Container(
                    child: Column(
                      children: [
                        PersonalizedLargeGreenButton(
                            isActive: !isClaimAlreadyManaged,
                            onPressed: () => isClaimAlreadyManaged
                                ? null
                                : ctx.read<AnswerClaimBloc>().add(
                                    AnswerClaimEvent.claimDecisionTaken(
                                        ClaimStatus.approved, claimId)),
                            text: const Text(
                              "Accept",
                              style: TextStyle(fontSize: 20),
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
                                        : ctx.read<AnswerClaimBloc>().add(
                                            AnswerClaimEvent.claimDecisionTaken(
                                                ClaimStatus.rejected, claimId)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                    ),
                                    child: const Text(
                                      "Decline",
                                      style: TextStyle(fontSize: 20),
                                    )),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                  return state.isLoading
                      ? const CustomCircularProgress(size: 100)
                      : SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "Claim decision",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () => ctx
                                          .read<AnswerClaimBloc>()
                                          .add(const AnswerClaimEvent
                                              .infoTriggered()),
                                      child: const Icon(
                                        Icons.info,
                                        size: 30,
                                        color: Color.fromRGBO(144, 202, 249, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                state.isInfoOpen
                                    ? Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade100,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              "Please review the answer received and make a decision to either accept or decline the claim for the item. If the provided answer is correct, you can proceed with returning the item to its rightful owner.",
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(),
                                ClaimInfoField(
                                  title: "Item claimed",
                                  content: ClaimedItemInfo(
                                    token: state.token,
                                    item: state.item!,
                                    subject: state.item!.claims!
                                        .firstWhere(
                                            (element) => element.id == claimId)
                                        .user
                                        .username,
                                    claimIdx: state.item!.claims!.indexWhere(
                                        (element) => element.id == claimId),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ClaimInfoField(
                                  title: "Question",
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
                                  title: "Answer",
                                  content: Text(
                                    state.item!.claims!
                                        .firstWhere(
                                            (element) => element.id == claimId)
                                        .answer,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: isClaimAlreadyManaged ? 10 : 30,
                                ),
                                isClaimAlreadyManaged
                                    ? ClaimInfoField(
                                        title: "Claim status",
                                        content: Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                                // TODO (@alecava41) add logic
                                            color: /*claim.status*/ ClaimStatus
                                                        .approved ==
                                                    ClaimStatus.approved
                                                ? PersonalizedColor
                                                    .claimAcceptedStatusColor
                                                : (/*claim.status*/ ClaimStatus
                                                            .approved ==
                                                        ClaimStatus.rejected
                                                    ? PersonalizedColor
                                                        .claimDeniedStatusColor
                                                    : PersonalizedColor
                                                        .claimWaitingStatusColor),
                                          ),
                                          child: RichText(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  // TODO (@alecava41) add logic
                                                  text: /*claim.status.name
                                                      .toUpperCase()*/
                                                      "ACCEPTED",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : buttons,
                              ],
                            ),
                          ),
                        );
                },
              )),
        ));
  }
}
