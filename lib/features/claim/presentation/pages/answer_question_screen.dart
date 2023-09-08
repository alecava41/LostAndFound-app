import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_expansion_tile.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/custom_field_container.dart';

import '../../../../core/domain/entities/claim_status.dart';
import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../../../chat/presentation/pages/chat_page.dart';
import '../bloc/answer_question/answer_question_bloc.dart';
import '../widgets/claim_info_field.dart';
import '../widgets/claimed_item_info.dart';

class AnswerQuestionScreen extends StatelessWidget {
  final int itemId;
  final bool isClaimAlreadyTaken;

  const AnswerQuestionScreen({super.key, required this.itemId, required this.isClaimAlreadyTaken});

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
                final claimFailureOrSuccess = state.claimFailureOrSuccess;
                final roomCreationFailureOrSuccess = state.roomCreationFailureOrSuccess;

                if (roomCreationFailureOrSuccess != null) {
                  roomCreationFailureOrSuccess.fold((failure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          failure.maybeWhen<String>(
                              genericFailure: () => 'Server error. Please try again later.',
                              networkFailure: () => 'No internet connection available. Check your internet connection.',
                              validationFailure: (reason) => reason!,
                              orElse: () => "Unknown error"),
                        ),
                      ),
                    );
                  }, (room) {
                    Navigator.of(ctx)
                        .push(MaterialPageRoute(builder: (_) => ChatScreen(roomId: room.id, itemId: itemId)));
                  });
                }

                if (claimFailureOrSuccess != null) {
                  claimFailureOrSuccess.fold(
                      (failure) => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
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
                      (updatedItem) => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.green,
                                content: Text("Claim successfully created"),
                              ),
                            ),
                            Navigator.pop(context, updatedItem),
                          });
                }
              },
              builder: (ctx, state) => state.isLoading
                  ? const CustomCircularProgress(size: 100)
                  : state.hasLoadingError
                      ? ErrorPage(
                          onRetry: () => ctx.read<AnswerQuestionBloc>().add(AnswerQuestionEvent.contentCreated(itemId)))
                      : SingleChildScrollView(
                          child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomExpansionTile(
                                title: Text(
                                  isClaimAlreadyTaken ? "You have claimed this item." : "You are claiming this item.",
                                  style: const TextStyle(fontSize: 16),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      isClaimAlreadyTaken
                                          ? "On this page, you can find information about this claim you have made."
                                          : "To claim the item, please answer the following question correctly. If you can provide the correct answer, the user who found the item will approve your claim and then you can have your item back.",
                                      style: const TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomFieldContainer(
                                title: "Item you are claiming",
                                content: ClaimedItemInfo(
                                  item: state.item!,
                                  token: state.token,
                                  subject: state.item!.user.username,
                                  claimIdx: null,
                                  otherUserId: state.item!.user.id,
                                  otherUserUsername: state.item!.user.username,
                                  isQuestionScreen: true,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomFieldContainer(
                                title: "Question of ${state.item!.user.username}",
                                content: Text(
                                  state.item!.question!,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              isClaimAlreadyTaken
                                  ? CustomFieldContainer(
                                      title: "Your answer",
                                      content: Text(
                                        state.item!.userClaim!.answer!,
                                        style: const TextStyle(
                                          fontSize: 16,
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
                              const SizedBox(
                                height: 10,
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
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                                                      text: state.item!.userClaim!.status.name.toUpperCase(),
                                                      style: const TextStyle(
                                                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
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
                                                child: state.item!.userClaim!.status == ClaimStatus.approved
                                                    ? Text(
                                                        "Your claim has been accepted! Get in touch with ${state.item!.user.username} through the chat to arrange the item's return.",
                                                        style: const TextStyle(color: Colors.black54),
                                                      )
                                                    : state.item!.userClaim!.status == ClaimStatus.rejected
                                                        ? Text(
                                                            "Unfortunately, your claim has been rejected by ${state.item!.user.username}.",
                                                            style: const TextStyle(color: Colors.black54),
                                                          )
                                                        : Text(
                                                            "Wait for ${state.item!.user.username} to validate to your claim.",
                                                            style: const TextStyle(color: Colors.black54),
                                                          ),
                                              ),
                                            ],
                                          ),
                                        ]),
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
      )),
    );
  }
}
