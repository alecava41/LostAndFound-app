import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/domain/entities/claim_status.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/answer_claim/answer_claim_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../widgets/claimed_item_info.dart';

class AnswerClaimScreen extends StatelessWidget {
  final int itemId;
  final int claimId;
  final bool isClaimAlreadyManaged;

  // TODO maybe it's better to let owner see how he evaluated the claim even after the evaluation (but buttons are disabled)

  const AnswerClaimScreen({super.key, required this.itemId, required this.claimId, required this.isClaimAlreadyManaged});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Answer to claim",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: BlocProvider(
              create: (_) => sl<AnswerClaimBloc>()..add(AnswerClaimEvent.contentCreated(itemId)),
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
                                  backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
                                  content: Text(
                                      failure.maybeWhen<String>(
                                          genericFailure: () => 'Server error. Please try again later.',
                                          networkFailure: () =>
                                              'No internet connection available. Check your internet connection.',
                                          orElse: () => "Unknown error"),
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              )
                            },
                        (_) => {});
                  }

                  if (claimFailureOrSuccess != null) {
                    claimFailureOrSuccess.fold(
                        (failure) => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  padding: const EdgeInsets.all(30),
                                  backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
                                  content: Text(
                                      failure.maybeWhen<String>(
                                          genericFailure: () => 'Server error. Please try again later.',
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
                builder: (ctx, state) => state.isLoading
                    ? const CircularProgressIndicator(
                        value: null,
                      )
                    : SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Claim decision",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          ctx.read<AnswerClaimBloc>().add(const AnswerClaimEvent.infoTriggered()),
                                      child: const Icon(
                                        Icons.info,
                                        size: 30,
                                        color: Color.fromRGBO(144, 202, 249, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              state.isInfoOpen
                                  ? Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue.shade100,
                                          borderRadius: BorderRadius.circular(10),
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
                              const Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Text("Item claimed:"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: PersonalizedColor.primarySwatch.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: ClaimedItemInfo(
                                        token: state.token,
                                        item: state.item!,
                                        subject: state.item!.claims!
                                            .firstWhere((element) => element.id == claimId)
                                            .user
                                            .username,
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Text("Question:"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Text(
                                  state.item!.question!,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Text("Answer:"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Text(
                                  state.item!.claims!.firstWhere((element) => element.id == claimId).answer,
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              PersonalizedLargeGreenButton(
                                  onPressed: () => ctx
                                      .read<AnswerClaimBloc>()
                                      .add(AnswerClaimEvent.claimDecisionTaken(ClaimStatus.approved, claimId)),
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
                                          onPressed: () => ctx
                                              .read<AnswerClaimBloc>()
                                              .add(AnswerClaimEvent.claimDecisionTaken(ClaimStatus.rejected, claimId)),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            shape: const StadiumBorder(),
                                            padding: const EdgeInsets.symmetric(vertical: 16),
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
                        ),
                      ),
              )),
        ));
  }
}