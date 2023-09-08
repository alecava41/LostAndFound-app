import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/insert_item/insert_item_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/custom_field_container.dart';

import '../../../../core/presentation/dialogs/camera_permission.dart';
import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../core/presentation/widgets/confirm_exit_dialog.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/media_selection_dialog.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../widgets/insert_item/upload_image_form.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../widgets/insert_item/radio_buttons_form.dart';
import 'package:permission_handler/permission_handler.dart';

class InsertItemScreen extends StatelessWidget {
  final bool isNewItemLost;

  final ImagePicker picker = ImagePicker();

  InsertItemScreen({super.key, this.isNewItemLost = true});

  // Upload image from camera or from gallery based on parameter
  Future<void> getImage(ImageSource media, Function(String? path) callback, context) async {
    bool hasPermission = true;

    if (media == ImageSource.camera) {
      Permission permission = Permission.camera;
      PermissionStatus permissionStatus = await permission.status;

      if (permissionStatus.isPermanentlyDenied) {
        showCameraPermissionPermanentlyDeniedDialog(context);
        hasPermission = false;
      } else if (permissionStatus.isDenied) {
        permissionStatus = await permission.request();

        if (permissionStatus == PermissionStatus.denied) {
          showCameraPermissionDeniedDialog(context);
          hasPermission = false;
        } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
          showCameraPermissionPermanentlyDeniedDialog(context);
          hasPermission = false;
        }
      }
    }

    if (hasPermission) {
      var img = await picker.pickImage(source: media);
      callback(img?.path);
    }
  }

  Future<void> onTapGallery(BuildContext ctx) async {
    Navigator.pop(ctx);
    await getImage(ImageSource.gallery,
        (path) => path != null ? ctx.read<InsertItemBloc>().add(InsertItemEvent.imageSelected(path)) : {}, ctx);
  }

  Future<void> onTapCamera(BuildContext ctx) async {
    Navigator.pop(ctx);
    await getImage(ImageSource.camera,
        (path) => path != null ? ctx.read<InsertItemBloc>().add(InsertItemEvent.imageSelected(path)) : {}, ctx);
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
    return BlocProvider<InsertItemBloc>(
      create: (_) => sl<InsertItemBloc>()..add(InsertItemEvent.contentCreated(isNewItemLost)),
      child: BlocConsumer<InsertItemBloc, InsertItemState>(
        listener: (ctx, state) {
          final insertFailureOrSuccess = state.insertFailureOrSuccess;

          if (insertFailureOrSuccess != null) {
            insertFailureOrSuccess.fold(
                (failure) => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            failure.maybeWhen<String>(
                                genericFailure: () => 'Server error. Please try again later.',
                                networkFailure: () => 'No internet connection available. Check your internet connection.',
                                orElse: () => "Unknown error"),
                          ),
                        ),
                      )
                    },
                (_) => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(backgroundColor: Colors.green, content: Text("Item successfully created")),
                      ),
                      ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.type)),
                      ctx.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0)),
                      Navigator.pop(ctx)
                    });
          }
        },
        builder: (ctx, state) {
          var titleField = CustomFieldContainer(
            title: "Title",
            content: PersonalizedFormWithTextInsertion(
              maxLines: 1,
              showError: state.showError,
              errorText: state.title.value.fold(
                  (failure) => failure.maybeWhen<String?>(
                      validationFailure: () => "Title must have between 1 and 50 characters.", orElse: () => null),
                  (r) => null),
              onTextChanged: (input) => ctx.read<InsertItemBloc>().add(InsertItemEvent.titleChanged(input)),
              isValid: state.title.value.isRight(),
              hintText: "Recognizable name for the item",
            ),
          );
          var checkboxField = CustomFieldContainer(
            title: "The item has been",
            content: PersonalizedRadioButtonsForm(
                selectedValue: state.type,
                onChanged: (type) => ctx.read<InsertItemBloc>().add(InsertItemEvent.typeChanged(type))),
          );
          var questionField = CustomFieldContainer(
            title: "Question to verify the ownership",
            content: PersonalizedFormWithTextInsertion(
              hintText: "Clear and precise question",
              isValid: state.question.value.isRight(),
              onTextChanged: (input) => ctx.read<InsertItemBloc>().add(InsertItemEvent.questionChanged(input)),
              showError: state.showError,
              errorText: state.question.value.fold(
                  (failure) => failure.maybeWhen<String?>(
                      validationFailure: () => "Safe question is required.", orElse: () => null),
                  (r) => null),
            ),
          );
          var createButton = Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () => ctx.read<InsertItemBloc>().add(const InsertItemEvent.insertSubmitted()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PersonalizedColor.mainColor,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "Create",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              )
            ],
          );
          return AnnotatedRegion(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: WillPopScope(
              onWillPop: () async {
                if (!state.isInitial()) {
                  showDialogExit(context);
                  return false;
                } else {
                  context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
                  Navigator.pop(ctx);
                  return true;
                }
              },
              child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: SafeArea(
                  child: Scaffold(
                    backgroundColor: PersonalizedColor.backgroundColor,
                    appBar: AppBar(
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          if (!state.isInitial()) {
                            showDialogExit(context);
                          } else {
                            context.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(0));
                            Navigator.pop(ctx);
                          }
                        },
                      ),
                      iconTheme: const IconThemeData(color: Colors.black),
                      title: const Text(
                        "Insert an item",
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          UploadImageForm(
                            onSelectUploadMethod: () => chooseMediaDialog(ctx),
                            onDeletePhoto: () => ctx.read<InsertItemBloc>().add(const InsertItemEvent.imageDeleted()),
                            imagePath: state.imagePath,
                          ),
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
                                checkboxField,
                                const SizedBox(
                                  height: 15,
                                ),
                                titleField,
                                state.type == ItemType.found
                                    ? const SizedBox(
                                        height: 15,
                                      )
                                    : Container(),
                                state.type == ItemType.found ? questionField : Container(),
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
                            address: state.address,
                            onPositionSelected: (LatLng? pos) {
                              if (pos != null) {
                                ctx
                                    .read<InsertItemBloc>()
                                    .add(InsertItemEvent.positionSelected(LatLng(pos.latitude, pos.longitude)));
                              }
                            },
                            showError: state.showError,
                            errorText: state.pos.value.fold(
                                (failure) => failure.maybeWhen(
                                    validationFailure: () => "Select the position of the item.", orElse: () => ""),
                                (_) => ""),
                            startingPosition: state.pos.value.getOrElse(() => const LatLng(0, 0)),
                            isLoadingAddress: state.isLoadingPosition,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CategorySelectionForm(
                            onTap: (value) => ctx
                                .read<InsertItemBloc>()
                                .add(InsertItemEvent.categorySelected(value.first, value.second)),
                            category: state.category,
                            showError: state.showError,
                            errorText: state.cat.value.fold(
                                (failure) => failure.maybeWhen(validationFailure: () => "Select a category.", orElse: () => ""),
                                (_) => ""),
                            removeAllOption: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          createButton,
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Divider customDivider() {
    return const Divider(
      height: 0,
    );
  }

  // Show "Choose Media" dialog
  Future<void> chooseMediaDialog(BuildContext context) async {
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

class InsertItemScreenArguments {
  final bool isNewItemLost;

  InsertItemScreenArguments({required this.isNewItemLost});
}
