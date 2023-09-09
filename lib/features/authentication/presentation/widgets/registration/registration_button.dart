import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(builder: (ctx, state) {
      return ElevatedButton(
        onPressed: () async {
          // Handle notification permissions on iOS
          FirebaseMessaging messaging = FirebaseMessaging.instance;

          await messaging.requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          );

          if (ctx.mounted) {
            ctx.read<RegistrationBloc>().add(const RegistrationEvent.registrationSubmitted());
          }
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: state.isSubmitting
            ? const CustomCircularProgress(
                size: 25,
                color: Colors.white,
              )
            : Text(
                AppLocalizations.of(context)!.signUp,
                style: const TextStyle(fontSize: 20),
              ),
      );
    });
  }
}
