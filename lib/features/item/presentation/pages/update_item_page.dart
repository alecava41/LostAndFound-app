import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/update_item/update_item_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/insert_item/radio_buttons_form.dart';
import 'package:lost_and_found/utils/utility.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/presentation/dialogs/camera_permission.dart';
import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../core/presentation/widgets/confirm_exit_dialog.dart';
import '../../../../core/presentation/widgets/insert_string_form.dart';
import '../../../../core/presentation/widgets/media_selection_dialog.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../widgets/insert_item/custom_field_container.dart';
import '../widgets/update_item/upload_image_form.dart';

class UpdateItemScreen extends StatelessWidget {
  final int itemId;
  final ImagePicker picker = ImagePicker();

  UpdateItemScreen({super.key, required this.itemId});

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
        (path) => path != null ? ctx.read<UpdateItemBloc>().add(UpdateItemEvent.imageSelected(path)) : {}, ctx);
  }

  Future<void> onTapCamera(BuildContext ctx) async {
    Navigator.pop(ctx);
    await getImage(ImageSource.camera,
        (path) => path != null ? ctx.read<UpdateItemBloc>().add(UpdateItemEvent.imageSelected(path)) : {}, ctx);
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
    return BlocBuilder<AppGlobalBloc, AppGlobalState>(
      builder: (appGlobalCtx, appGlobalState) => BlocProvider<UpdateItemBloc>(
        create: (_) => sl<UpdateItemBloc>()..add(UpdateItemEvent.contentCreated(itemId)),
        child: BlocConsumer<UpdateItemBloc, UpdateItemState>(
          listener: (ctx, state) {
            final updateFailureOrSuccess = state.updateFailureOrSuccess;

            if (updateFailureOrSuccess != null) {
              updateFailureOrSuccess.fold(
                  (failure) => showBasicErrorSnackbar(context, failure),
                  (_) => {
                        showBasicSuccessSnackbar(context, AppLocalizations.of(context)!.successItemUpdate),

                        // Update lost/found item on HP
                        ctx.read<HomeBloc>().add(HomeEvent.homeSectionRefreshed(state.item!.type)),
                        Navigator.pop(ctx, true)
                      });
            }
          },
          builder: (ctx, state) => AnnotatedRegion(
            value: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: WillPopScope(
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
                  child: Scaffold(
                    backgroundColor: Theme.of(context).colorScheme.background,
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
                      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
                      title: Text(
                        AppLocalizations.of(context)!.updateItemPageTitle,
                        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                      ),
                      backgroundColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
                    ),
                    body: state.isLoading
                        ? const CustomCircularProgress(size: 100)
                        : state.hasLoadingError
                            ? ErrorPage(
                                onRetry: () => ctx.read<UpdateItemBloc>().add(UpdateItemEvent.contentCreated(itemId)))
                            : SingleChildScrollView(
                                child: Column(children: [
                                  UploadImageForm(
                                      onSelectUploadMethod: () => chooseMediaDialog(ctx),
                                      onDeletePhoto: () =>
                                          ctx.read<UpdateItemBloc>().add(const UpdateItemEvent.imageDeleted()),
                                      imagePath: state.imagePath,
                                      itemId: itemId,
                                      token: state.token,
                                      hasDeletedOriginalImage: state.hasDeletedOriginalImage),
                                  customDivider(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  customDivider(),
                                  Container(
                                    color: Theme.of(context).colorScheme.background,
                                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        CustomFieldContainer(
                                          title: AppLocalizations.of(context)!.itemType,
                                          content: PersonalizedRadioButtonsForm(
                                              selectedValue: state.item!.type, onChanged: null),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        CustomFieldContainer(
                                          title: AppLocalizations.of(context)!.titleFieldTitle,
                                          content: PersonalizedFormWithTextInsertion(
                                            maxLines: 1,
                                            text: state.title.value.getOrElse(() => ""),
                                            showError: state.showError,
                                            errorText: state.title.value.fold(
                                                (failure) => failure.maybeWhen<String?>(
                                                    validationFailure: () =>
                                                        AppLocalizations.of(context)!.failureInvalidTitle,
                                                    orElse: () => null),
                                                (r) => null),
                                            onTextChanged: (input) =>
                                                ctx.read<UpdateItemBloc>().add(UpdateItemEvent.titleChanged(input)),
                                            isValid: state.title.value.isRight(),
                                            hintText: AppLocalizations.of(context)!.titleFieldHint,
                                          ),
                                        ),
                                        state.item!.type == ItemType.found
                                            ? const SizedBox(
                                                height: 15,
                                              )
                                            : Container(),
                                        state.item!.type == ItemType.found
                                            ? CustomFieldContainer(
                                                title: AppLocalizations.of(context)!.questionFieldTitle,
                                                content: PersonalizedFormWithTextInsertion(
                                                  text: state.question.value.getOrElse(() => ""),
                                                  hintText: AppLocalizations.of(context)!.questionFieldHint,
                                                  isValid: state.question.value.isRight(),
                                                  onTextChanged: (input) => ctx
                                                      .read<UpdateItemBloc>()
                                                      .add(UpdateItemEvent.questionChanged(input)),
                                                  showError: state.showError,
                                                  errorText: state.question.value.fold(
                                                      (failure) => failure.maybeWhen<String?>(
                                                          validationFailure: () =>
                                                              AppLocalizations.of(context)!.failureInvalidQuestionField,
                                                          orElse: () => null),
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
                                        (failure) => failure.maybeWhen(
                                            validationFailure: () => AppLocalizations.of(context)!.failureInvalidPosition,
                                            orElse: () => ""),
                                        (_) => ""),
                                    startingPosition: state.pos.value.getOrElse(() => appGlobalState.defaultPosition),
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
                                        (failure) => failure.maybeWhen(
                                            validationFailure: () => AppLocalizations.of(context)!.failureInvalidCategory,
                                            orElse: () => ""),
                                        (_) => ""),
                                    removeAllOption: true,
                                  ),
                                  const SizedBox(
                                    height: 10,
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
                                                backgroundColor: Theme.of(context).primaryColor,
                                                shape: const StadiumBorder(),
                                                padding: const EdgeInsets.symmetric(vertical: 16),
                                              ),
                                              child: state.isSubmitting
                                                  ? CustomCircularProgress(
                                                      size: 25,
                                                      color: Theme.of(context).colorScheme.background,
                                                    )
                                                  : Text(
                                                      AppLocalizations.of(context)!.update,
                                                      style: TextStyle(
                                                          fontSize: 20, color: Theme.of(context).colorScheme.background),
                                                    )),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ]),
                              ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider customDivider() {
    return const Divider(
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
