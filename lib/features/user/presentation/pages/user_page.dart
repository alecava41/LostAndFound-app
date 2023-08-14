import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';

import '../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../widgets/user/editable_circular_image.dart';
import '../widgets/user/option_item.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  // TODO (@alecava41 / @backToFrancesco) need to add screen to handle user fields / preferences (notifications, email, ...)

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
                      action: SnackBarAction(
                        label: 'Retry',
                        onPressed: () => ctx.read<UserBloc>().add(UserEvent.imageChanged(state.imagePath)),
                      ),
                      padding: const EdgeInsets.all(30),
                      backgroundColor: Colors.red,
                      content: Text(
                          failure.maybeWhen<String>(
                              genericFailure: () => 'Server error. Please try again later.',
                              networkFailure: () => 'No internet connection available. Check your internet connection.',
                              orElse: () => "Unknown error"),
                          style: const TextStyle(fontSize: 20)),
                    ),
                  ),
              (_) => {});
        }

        if (logoutFailureOrSuccess != null) {
          logoutFailureOrSuccess.fold(
              (failure) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      padding: const EdgeInsets.all(30),
                      backgroundColor: Colors.red,
                      content: Text(
                          failure.maybeWhen<String>(
                              genericFailure: () => 'Server error. Please try again later.',
                              networkFailure: () => 'No internet connection available. Check your internet connection.',
                              orElse: () => "Unknown error"),
                          style: const TextStyle(fontSize: 20)),
                    ),
                  ),
              (_) => {
                    // Go back to login page, remove all history
                    Navigator.popUntil(context, (route) => route.isFirst),
                    Navigator.pushReplacementNamed(context, "/tutorial")
                  });
        }
      },
      builder: (ctx, state) => state.isLoading
          ? const CustomCircularProgress(size: 100)
          : state.user != null
              ? SingleChildScrollView(
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
                                            radius: 70,
                                            hasImage: state.user!.hasImage,
                                          ),
                                          const SizedBox(
                                            width: 25,
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
                            showLogoutDialog(context);
                          })
                    ],
                  ),
                )
              :
              // TODO need to handle error on loading (@backToFrancesco)
      Container(),
    );
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
