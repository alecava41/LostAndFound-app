import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/insert_item/insert_item_bloc.dart';

import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/select_category/select_category_form.dart';
import '../../../../core/presentation/widgets/confirm_exit_dialog.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/media_selection_dialog.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../widgets/insert_item/upload_image_form.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors.dart';
import '../widgets/insert_item/radio_buttons_form.dart';

class InsertItemScreen extends StatelessWidget {
  final ImagePicker picker = ImagePicker();

  InsertItemScreen({super.key});

  // Upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media, Function(XFile? image, String? path) callback) async {
    var img = await picker.pickImage(source: media);
    callback(img, img?.path);
  }

  void onTapGallery(BuildContext ctx) {
    Navigator.pop(ctx);
    getImage(ImageSource.gallery,
        (image, path) => ctx.read<InsertItemBloc>().add(InsertItemEvent.imageSelected(image!, path!)));
  }

  void onTapCamera(BuildContext ctx) {
    Navigator.pop(ctx);
    getImage(ImageSource.camera,
        (image, path) => ctx.read<InsertItemBloc>().add(InsertItemEvent.imageSelected(image!, path!)));
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
    return WillPopScope(
        onWillPop: () async {
          if (true) { // TODO add check for empty fields
            showDialogExit(context);
            return false;
          } else {
            return true;
          }
        },
    child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: PersonalizedColor.backGroundColor,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => showDialogExit(context),
            ),
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              "Insert an item",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: BlocProvider<InsertItemBloc>(
              create: (_) => sl<InsertItemBloc>(),
              child: BlocConsumer<InsertItemBloc, InsertItemState>(
                  listener: (ctx, state) {
                    final insertFailureOrSuccess = state.insertFailureOrSuccess;

                    if (insertFailureOrSuccess != null) {
                      insertFailureOrSuccess.fold(
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
                                        validationFailure: (reason) => reason!,
                                        orElse: () => "Unknown error"),
                                    style: const TextStyle(fontSize: 20)),
                              ),
                            )
                          },
                              (_) => {
                            // TODO: if successful, need to update lost/found item on HP
                            ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.type)),
                            Navigator.pop(ctx)
                          });
                    }
                  },
                  builder: (ctx, state) => SingleChildScrollView(
                    child: Column(children: [
                      UploadImageForm(
                        onSelectUploadMethod: () => chooseMediaDialog(ctx),
                        onDeletePhoto: () => ctx.read<InsertItemBloc>().add(const InsertItemEvent.imageDeleted()),
                        image: state.image,
                        imagePath: state.imagePath,
                      ),
                      customDivider(),
                      const SizedBox(
                        height: 10,
                      ),
                      customDivider(),
                      PersonalizedRadioButtonsForm(
                          selectedValue: state.type,
                          onChanged: (type) => ctx.read<InsertItemBloc>().add(InsertItemEvent.typeChanged(type))),
                      customDivider(),
                      const SizedBox(
                        height: 10,
                      ),
                      customDivider(),
                      PersonalizedFormWithTextInsertion(
                        title: "Title:",
                        showError: state.showError,
                        errorText: state.title.value.fold(
                                (failure) =>
                                failure.maybeWhen<String?>(validationFailure: (reason) => reason, orElse: () => null),
                                (r) => null),
                        onTextChanged: (input) => ctx.read<InsertItemBloc>().add(InsertItemEvent.titleChanged(input)),
                        isValid: state.title.value.isRight(),
                        hintText: "e.g. Iphone 12 black",
                      ),
                      customDivider(),
                      state.type == ItemType.found
                          ? const SizedBox(
                        height: 10,
                      )
                          : Container(),
                      state.type == ItemType.found ? customDivider() : Container(),
                      state.type == ItemType.found
                          ? PersonalizedFormWithTextInsertion(
                        title: "Question to verify the ownership:",
                        hintText: "e.g. Any device scratches? Where?",
                        isValid: state.question.value.isRight(),
                        onTextChanged: (input) =>
                            ctx.read<InsertItemBloc>().add(InsertItemEvent.questionChanged(input)),
                        showError: state.showError,
                        errorText: state.question.value.fold(
                                (failure) => failure.maybeWhen<String?>(
                                validationFailure: (reason) => reason, orElse: () => null),
                                (r) => null),
                      )
                          : Container(),
                      state.type == ItemType.found ? customDivider() : Container(),
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CategorySelectionForm(
                        onTap: (value) => ctx
                            .read<InsertItemBloc>()
                            .add(InsertItemEvent.categorySelected(value.first, value.second)),
                        category: state.category,
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
                                      ctx.read<InsertItemBloc>().add(const InsertItemEvent.insertSubmitted()),
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
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ]),
                  ))),
        )),
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
