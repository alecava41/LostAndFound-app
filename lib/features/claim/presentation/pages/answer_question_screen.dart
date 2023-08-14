import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../bloc/answer_question/answer_question_bloc.dart';
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
                        (_) => {
                              // boolean argument denotes outcome of claim (Y => claim created, N/null => claim not created)
                              Navigator.pop(context, true)
                            });
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
                            const Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                              child: Text("Item you are claiming"),
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
                                      item: state.item!,
                                      token: state.token,
                                      subject: state.item!.user.username,
                                      claimIdx: null,
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
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            isClaimAlreadyTaken
                                ? const Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                    child: Text("Question"),
                                  )
                                : Container(),
                            isClaimAlreadyTaken
                                ? Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Text(
                                      state.item!.userClaim!.answer!,
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                :
                                // TODO (@backToFrancesco) why is it possible to add multiple lines?
                                PersonalizedFormWithTextInsertion(
                                    text: "Your answer",
                                    onTextChanged: (value) =>
                                        ctx.read<AnswerQuestionBloc>().add(AnswerQuestionEvent.answerFieldChanged(value)),
                                    hintText: "",
                                    errorText: state.answer.value.fold(
                                        (failure) => failure.maybeWhen<String?>(
                                            validationFailure: (reason) => reason, orElse: () => null),
                                        (r) => null),
                                    isValid: state.answer.value.isRight(),
                                    showError: state.showErrorMessage),
                            const SizedBox(
                              height: 30,
                            ),
                            PersonalizedLargeGreenButton(
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
