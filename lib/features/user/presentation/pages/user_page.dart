import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/core/presentation/tutorial/widgets/large_white_button.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../core/presentation/widgets/modal_sheet_option_button.dart';
import '../../../badges/presentation/bloc/badge_bloc.dart';
import '../../../chat/presentation/bloc/inbox/inbox_bloc.dart';
import '../../../item/presentation/bloc/search/search_bloc.dart';
import '../widgets/user/editable_circular_image.dart';
import '../widgets/user/option_item.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppGlobalBloc, AppGlobalState>(
      builder: (appGlobalCtx, appGlobalState) =>
          BlocConsumer<UserBloc, UserState>(
        listener: (ctx, state) {
          final imageFailureOrSuccess = state.imageUploadFailureOrSuccess;
          final logoutFailureOrSuccess = state.logoutFailureOrSuccess;

          if (imageFailureOrSuccess != null) {
            imageFailureOrSuccess.fold(
                (failure) => showBasicErrorSnackbar(context, failure),
                (_) => showBasicSuccessSnackbar(
                    context, AppLocalizations.of(context)!.successUploadImage));
          }

          if (logoutFailureOrSuccess != null) {
            logoutFailureOrSuccess.fold(
                (failure) => showBasicErrorSnackbar(context, failure),
                (_) => {
                      // Go back to login page, remove all history
                      Navigator.popUntil(context, (route) => route.isFirst),
                      Navigator.pushReplacementNamed(context, "/tutorial"),

                      ctx
                          .read<HomeBloc>()
                          .add(const HomeEvent.restoreInitial()),
                      ctx
                          .read<SearchBloc>()
                          .add(const SearchEvent.restoreInitial()),
                      ctx
                          .read<HomeControllerBloc>()
                          .add(const HomeControllerEvent.restoreInitial()),
                      ctx
                          .read<BadgeBloc>()
                          .add(const BadgeEvent.restoreInitial()),
                      ctx
                          .read<InboxBloc>()
                          .add(const InboxEvent.restoreInitial()),
                      ctx
                          .read<UserBloc>()
                          .add(const UserEvent.restoreInitial()),

                      showBasicSuccessSnackbar(
                          context, AppLocalizations.of(context)!.successLogout),
                    });
          }
        },
        builder: (ctx, state) => state.hasLoadingError
            ? ErrorPage(
                onRetry: () =>
                    ctx.read<UserBloc>().add(const UserEvent.contentCreated()))
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.profile,
                              style: const TextStyle(fontSize: 30),
                            ),
                            const Divider(
                              endIndent: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: state.isLoading
                                  ? const CustomCircularProgress(size: 120)
                                  : Row(
                                      children: [
                                        Flexible(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              EditableCircularImage(
                                                token: state.token,
                                                userId: state.user!.id,
                                                onImageChange: (String? path) =>
                                                    ctx.read<UserBloc>().add(
                                                        UserEvent.imageChanged(
                                                            path)),
                                                radius: 60,
                                                hasImage: state.user!.hasImage,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 10, 0, 0),
                                                      child: Text(
                                                        state.user!.username,
                                                        style: const TextStyle(
                                                            fontSize: 25),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 25,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.email,
                                                          color: Colors.black54,
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                state
                                                                    .userEmail!,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black54),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      height: 0,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      height: 0,
                    ),
                    OptionItem(
                      optionName:
                          AppLocalizations.of(context)!.changePasswordButton,
                      onTap: () => Navigator.of(ctx).pushNamed(
                        '/options/changePassword',
                      ),
                    ),
                    OptionItem(
                      optionName: AppLocalizations.of(context)!.tutorial,
                      onTap: () => Navigator.of(ctx).pushNamed(
                        '/options/tutorial',
                      ),
                    ),
                    OptionItem(
                      optionName: AppLocalizations.of(context)!.changeLanguage,
                      onTap: () => onChangeLanguageButtonClick(
                          ctx, appGlobalState.locale),
                    ),
                    OptionItem(
                      optionName: AppLocalizations.of(context)!.logout,
                      showArrow: false,
                      onTap: () {
                        showLogoutDialog(ctx);
                      },
                    )
                  ],
                ),
              ),
      ),
    );
  }

  void onChangeLanguageButtonClick(BuildContext ctx, Locale currentLocale) {
    showModalBottomSheet<void>(
      context: ctx,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                AppLocalizations.of(context)!.selectLanguageDialogTitle,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: "English",
              isSelected: currentLocale == const Locale("en"),
              onClick: () => ctx
                  .read<AppGlobalBloc>()
                  .add(const AppGlobalEvent.localeChanged(Locale("en"))),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: "Italiano",
              isSelected: currentLocale == const Locale("it"),
              onClick: () => ctx
                  .read<AppGlobalBloc>()
                  .add(const AppGlobalEvent.localeChanged(Locale("it"))),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        );
      },
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.logout),
          content: Text(AppLocalizations.of(context)!.logoutDialogContent),
          actions: <Widget>[
            PersonalizedLargeGreenButton(
                onPressed: () => onLogoutDialogNoPressed(context),
                text: Text(AppLocalizations.of(context)!.logoutDialogNo)),
            PersonalizedLargeWhiteButton(
                onPressed: () => onLogoutDialogYesPressed(context),
                text: Text(AppLocalizations.of(context)!.logoutDialogYes, style: const TextStyle(color: PersonalizedColor.mainColor),))
          ],
        );
      },
    );
  }

  onLogoutDialogNoPressed(context) {
    Navigator.of(context).pop();
  }

  onLogoutDialogYesPressed(BuildContext context) {
    Navigator.of(context).pop();
    context.read<UserBloc>().add(const UserEvent.logout());
  }
}
