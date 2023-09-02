import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';

import '../../../../core/presentation/home_controller/bloc/home_controller_bloc.dart';
import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../badges/presentation/bloc/badge_bloc.dart';
import '../../../chat/presentation/bloc/inbox/inbox_bloc.dart';
import '../../../item/presentation/bloc/search/search_bloc.dart';
import '../widgets/user/editable_circular_image.dart';
import '../widgets/user/option_item.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
        listener: (ctx, state) {
          final imageFailureOrSuccess = state.imageUploadFailureOrSuccess;
          final logoutFailureOrSuccess = state.logoutFailureOrSuccess;

          if (imageFailureOrSuccess != null) {
            imageFailureOrSuccess.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          failure.maybeWhen<String>(
                              genericFailure: () => 'Server error. Please try again later.',
                              networkFailure: () => 'No internet connection available. Check your internet connection.',
                              orElse: () => "Unknown error"),
                        ),
                      ),
                    ),
                (_) => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Image uploaded successfully"),
                        ),
                      ),
                    });
          }

          if (logoutFailureOrSuccess != null) {
            logoutFailureOrSuccess.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          failure.maybeWhen<String>(
                              genericFailure: () => 'Server error. Please try again later.',
                              networkFailure: () => 'No internet connection available. Check your internet connection.',
                              orElse: () => "Unknown error"),
                        ),
                      ),
                    ),
                (_) => {
                      // Go back to login page, remove all history
                      Navigator.popUntil(context, (route) => route.isFirst),
                      Navigator.pushReplacementNamed(context, "/tutorial"),

                      ctx.read<HomeBloc>().add(const HomeEvent.restoreInitial()),
                      ctx.read<SearchBloc>().add(const SearchEvent.restoreInitial()),
                      ctx.read<HomeControllerBloc>().add(const HomeControllerEvent.restoreInitial()),
                      ctx.read<BadgeBloc>().add(const BadgeEvent.restoreInitial()),
                      ctx.read<InboxBloc>().add(const InboxEvent.restoreInitial()),
                      ctx.read<UserBloc>().add(const UserEvent.restoreInitial()),

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Successful logout"),
                        ),
                      ),
                    });
          }
        },
        builder: (ctx, state) => state.isLoading
            ? const CustomCircularProgress(size: 100)
            : state.hasLoadingError
                ? ErrorPage(onRetry: () => ctx.read<UserBloc>().add(const UserEvent.contentCreated()))
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
                                const Text(
                                  "Profile",
                                  style: TextStyle(fontSize: 40),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            EditableCircularImage(
                                              token: state.token,
                                              userId: state.user!.id,
                                              onImageChange: (String? path) =>
                                                  ctx.read<UserBloc>().add(UserEvent.imageChanged(path)),
                                              radius: 60,
                                              hasImage: state.user!.hasImage,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                child: Text(
                                                  state.user!.username,
                                                  style: const TextStyle(fontSize: 25),
                                                ),
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
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        ),
                        OptionItem(
                            optionName: "Change password",
                            onTap: () => Navigator.of(ctx).pushNamed(
                                  '/options/changePassword',
                                )),
                        OptionItem(
                            optionName: "Tutorial",
                            onTap: () => Navigator.of(ctx).pushNamed(
                                  '/options/tutorial',
                                )),
                        OptionItem(
                            optionName: "Logout",
                            showArrow: false,
                            onTap: () {
                              showLogoutDialog(ctx);
                            })
                      ],
                    ),
                  ));
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to log out?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No, stay connected'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<UserBloc>().add(const UserEvent.logout());
              },
              child: const Text('Yes, log out'),
            ),
          ],
        );
      },
    );
  }
}
