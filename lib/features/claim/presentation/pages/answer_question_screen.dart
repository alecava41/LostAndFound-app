import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/custom_field_container.dart';

import '../../../../core/domain/entities/claim_status.dart';
import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../bloc/answer_question/answer_question_bloc.dart';
import '../widgets/claim_info_field.dart';
import '../widgets/claimed_item_info.dart';

class AnswerQuestionScreen extends StatelessWidget {
  final int itemId;
  final bool isClaimAlreadyTaken;

  const AnswerQuestionScreen({super.key, required this.itemId, required this.isClaimAlreadyTaken});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Answer claim question",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: BlocProvider(
              create: (_) => sl<AnswerQuestionBloc>()..add(AnswerQuestionEvent.contentCreated(itemId)),
              child: BlocConsumer<AnswerQuestionBloc, AnswerQuestionState>(
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
                                          genericFailure: () => 'Server error. Please try again later.',
                                          networkFailure: () =>
                                              'No internet connection available. Check your internet connection.',
                                          orElse: () => "Unknown error"),
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              ),
                              Navigator.pop(ctx),
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
                                          genericFailure: () => 'Server error. Please try again later.',
                                          networkFailure: () =>
                                              'No internet connection available. Check your internet connection.',
                                          orElse: () => "Unknown error"),
                                      style: const TextStyle(fontSize: 20)),
                                ),
                              )
                            },
                        (updatedItem) => {Navigator.pop(context, updatedItem)});
                  }
                },
                builder: (ctx, state) => state.isLoading
                    ? const CustomCircularProgress(size: 100)
                    : SingleChildScrollView(
                        child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                              child: Row(
                                children: [
                                  const Text(
                                    "Claim item",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        ctx.read<AnswerQuestionBloc>().add(const AnswerQuestionEvent.infoTriggered()),
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
                                          "To claim the item, please answer the following question correctly. If you can provide the correct answer, who found the item will proceed to give it back to you.",
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                            CustomFieldContainer(
                              title: "Item you are claiming",
                              content: ClaimedItemInfo(
                                item: state.item!,
                                token: state.token,
                                subject: state.item!.user.username,
                                claimIdx: null,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomFieldContainer(
                              title: "Question",
                              content: Text(
                                state.item!.question!,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            isClaimAlreadyTaken
                                ? CustomFieldContainer(
                                    title: "Answer",
                                    content: Text(
                                      state.item!.userClaim!.answer!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                : CustomFieldContainer(
                                    title: "Your answer",
                                    content: PersonalizedFormWithTextInsertion(
                                        text: "",
                                        onTextChanged: (value) => ctx
                                            .read<AnswerQuestionBloc>()
                                            .add(AnswerQuestionEvent.answerFieldChanged(value)),
                                        hintText: "Your answer",
                                        errorText: state.answer.value.fold(
                                            (failure) => failure.maybeWhen<String?>(
                                                validationFailure: (reason) => reason, orElse: () => null),
                                            (r) => null),
                                        isValid: state.answer.value.isRight(),
                                        showError: state.showErrorMessage),
                                  ),
                            SizedBox(
                              height: isClaimAlreadyTaken ? 10 : 30,
                            ),
                            isClaimAlreadyTaken
                                ? ClaimInfoField(
                                    title: "Claim status",
                                    content: Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: state.item!.userClaim!.status == ClaimStatus.approved
                                            ? PersonalizedColor.claimAcceptedStatusColor
                                            : (state.item!.userClaim!.status == ClaimStatus.rejected
                                                ? PersonalizedColor.claimDeniedStatusColor
                                                : PersonalizedColor.claimWaitingStatusColor),
                                      ),
                                      child: RichText(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: state.item!.userClaim!.status.name,
                                              style: const TextStyle(
                                                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : PersonalizedLargeGreenButton(
                                    isActive: !isClaimAlreadyTaken,
                                    onPressed: () => isClaimAlreadyTaken
                                        ? ()
                                        : ctx.read<AnswerQuestionBloc>().add(const AnswerQuestionEvent.claimCreated()),
                                    text: const Text(
                                      "Send",
                                      style: TextStyle(fontSize: 20),
                                    ))
                          ],
                        ),
                      )),
              )),
        ));
  }
}
