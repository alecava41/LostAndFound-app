import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/update_item/update_item_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/radio_buttons_form.dart';

import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../core/presentation/widgets/confirm_exit_dialog.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/media_selection_dialog.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../widgets/insert_item/custom_field_container.dart';
import '../widgets/update_item/upload_image_form.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';

class UpdateItemScreen extends StatelessWidget {
  final int itemId;
  final ImagePicker picker = ImagePicker();

  UpdateItemScreen({super.key, required this.itemId});

  // Upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media, Function(XFile? image) callback) async {
    var img = await picker.pickImage(source: media);
    callback(img);
  }

  void onTapGallery(BuildContext ctx) {
    Navigator.pop(ctx);
    getImage(ImageSource.gallery, (image) => ctx.read<UpdateItemBloc>().add(UpdateItemEvent.imageSelected(image!.path)));
  }

  void onTapCamera(BuildContext ctx) {
    Navigator.pop(ctx);
    getImage(ImageSource.camera, (image) => ctx.read<UpdateItemBloc>().add(UpdateItemEvent.imageSelected(image!.path)));
  }

  void onConfirm(BuildContext context) {
    context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
    Navigator.pop(context);
    Navigator.pop(context);
  }

  void onCancel(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateItemBloc>(
      create: (_) => sl<UpdateItemBloc>()..add(UpdateItemEvent.contentCreated(itemId)),
      child: BlocConsumer<UpdateItemBloc, UpdateItemState>(
        listener: (ctx, state) {
          final loadFailureOrSuccess = state.loadFailureOrSuccess;
          final updateFailureOrSuccess = state.updateFailureOrSuccess;

          if (loadFailureOrSuccess != null) {
            loadFailureOrSuccess.fold(
                (failure) => {
                      failure.maybeWhen(
                          validationFailure: (_) {},
                          orElse: () {
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
                            );
                          }),
                      // Error while loading item, closing page
                      Navigator.pop(ctx, false)
                    },
                (_) => {});
          }

          if (updateFailureOrSuccess != null) {
            updateFailureOrSuccess.fold(
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
                                  validationFailure: (reason) => reason!,
                                  orElse: () => "Unknown error"),
                              style: const TextStyle(fontSize: 20)),
                        ),
                      )
                    },
                (_) => {
                      // Update lost/found item on HP
                      ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type)),
                      Navigator.pop(ctx, true)
                    });
          }
        },
        builder: (ctx, state) => WillPopScope(
          onWillPop: () async {
            if (state.hasChangedSomething) {
              showDialogExit(context);
              return false;
            } else {
              Navigator.pop(ctx);
              return true;
            }
          },
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: SafeArea(
              top: false,
              child: Scaffold(
                backgroundColor: PersonalizedColor.backGroundColor,
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      if (state.hasChangedSomething) {
                        showDialogExit(context);
                      } else {
                        Navigator.pop(ctx);
                      }
                    },
                  ),
                  iconTheme: const IconThemeData(color: Colors.black),
                  title: const Text(
                    "Modify item",
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.white,
                ),
                body: state.isLoading
                    ? const CustomCircularProgress(size: 100)
                    : (state.item != null
                        ? SingleChildScrollView(
                            child: Column(children: [
                              UploadImageForm(
                                  onSelectUploadMethod: () => chooseMediaDialog(ctx),
                                  onDeletePhoto: () =>
                                      ctx.read<UpdateItemBloc>().add(const UpdateItemEvent.imageDeleted()),
                                  imagePath: state.imagePath,
                                  itemId: itemId,
                                  token: state.token,
                                  hasImage: state.item!.hasImage,
                                  hasDeletedOriginalImage: state.hasDeletedOriginalImage),
                              customDivider(),
                              const SizedBox(
                                height: 10,
                              ),
                              customDivider(),
                              Container(
                                color: Colors.white,
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomFieldContainer(
                                      title: "The item has been",
                                      content:
                                          PersonalizedRadioButtonsForm(selectedValue: state.item!.type, onChanged: null),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    CustomFieldContainer(
                                      title: "Title",
                                      content: PersonalizedFormWithTextInsertion(
                                        maxLines: 1,
                                        text: state.title.value.getOrElse(() => ""),
                                        showError: state.showError,
                                        errorText: state.title.value.fold(
                                            (failure) => failure.maybeWhen<String?>(
                                                validationFailure: (reason) => reason, orElse: () => null),
                                            (r) => null),
                                        onTextChanged: (input) =>
                                            ctx.read<UpdateItemBloc>().add(UpdateItemEvent.titleChanged(input)),
                                        isValid: state.title.value.isRight(),
                                        hintText: "e.g. Iphone 12 black",
                                      ),
                                    ),
                                    state.item!.type == ItemType.found
                                        ? const SizedBox(
                                            height: 15,
                                          )
                                        : Container(),
                                    state.item!.type == ItemType.found
                                        ? CustomFieldContainer(
                                            title: "Question to verify the ownership",
                                            content: PersonalizedFormWithTextInsertion(
                                              text: state.question.value.getOrElse(() => ""),
                                              hintText: "e.g. Any device scratches? Where?",
                                              isValid: state.question.value.isRight(),
                                              onTextChanged: (input) =>
                                                  ctx.read<UpdateItemBloc>().add(UpdateItemEvent.questionChanged(input)),
                                              showError: state.showError,
                                              errorText: state.question.value.fold(
                                                  (failure) => failure.maybeWhen<String?>(
                                                      validationFailure: (reason) => reason, orElse: () => null),
                                                  (r) => null),
                                            ),
                                          )
                                        : Container(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              customDivider(),
                              const SizedBox(
                                height: 10,
                              ),
                              SelectPositionButton(
                                showError: state.showError,
                                errorText: state.pos.value.fold(
                                    (failure) =>
                                        failure.maybeWhen(validationFailure: (reason) => reason!, orElse: () => ""),
                                    (_) => ""),
                                startingPosition: state.pos.value.getOrElse(() => const LatLng(0, 0)),
                                isLoadingAddress: state.isLoadingPosition,
                                address: state.address,
                                onPositionSelected: (LatLng? pos) {
                                  if (pos != null) {
                                    ctx
                                        .read<UpdateItemBloc>()
                                        .add(UpdateItemEvent.positionSelected(LatLng(pos.latitude, pos.longitude)));
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CategorySelectionForm(
                                onTap: (value) => ctx
                                    .read<UpdateItemBloc>()
                                    .add(UpdateItemEvent.categorySelected(value.first, value.second)),
                                category: state.category,
                                showError: state.showError,
                                errorText: state.cat.value.fold(
                                    (failure) =>
                                        failure.maybeWhen(validationFailure: (reason) => reason!, orElse: () => ""),
                                    (_) => ""),
                                removeAllOption: true,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ElevatedButton(
                                          onPressed: () =>
                                              ctx.read<UpdateItemBloc>().add(const UpdateItemEvent.updateSubmitted()),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: PersonalizedColor.mainColor,
                                            shape: const StadiumBorder(),
                                            padding: const EdgeInsets.symmetric(vertical: 16),
                                          ),
                                          child: const Text(
                                            "Update",
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ]),
                          )
                        : Container()),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider customDivider() {
    return const Divider(
      color: Colors.grey,
      thickness: 1,
      height: 0,
    );
  }

  // Show "Choose Media" dialog
  void chooseMediaDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return MediaSelectionDialog(onTapGallery: () => onTapGallery(context), onTapCamera: () => onTapCamera(context));
        });
  }

  // Confirm exit dialog
  void showDialogExit(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return ConfirmExitDialog(onConfirm: () => onConfirm(context), onCancel: () => onCancel(context));
      },
    );
  }
}
