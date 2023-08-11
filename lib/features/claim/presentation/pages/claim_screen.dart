import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/claim_received_content.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../injection_container.dart';
import '../widgets/claim/claim_sent_content.dart';


class ClaimsScreen extends StatelessWidget {
  const ClaimsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          title: const Text(
            "Claims",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                "Received claims",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Your claims",
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
        body: SafeArea(
          top: false,
          child: BlocProvider(
            create: (_) => sl<ClaimBloc>()..add(const ClaimEvent.claimContentCreated()),
            child: BlocListener<ClaimBloc, ClaimState>(
              listener: (ctx, state) {
                final loadFailureOrSuccess = state.loadFailureOrSuccess;

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
                                    networkFailure: () => 'No internet connection available. Check your internet connection.',
                                    orElse: () => 'Unknown error'),
                                style: const TextStyle(fontSize: 20)),
                          ),
                        )
                      },
                          (success) => {});
                }
              },
              child: const TabBarView(children: [ClaimReceivedContent(), ClaimSentContent()]),
            )
          ),
        ),
      ),
    );
  }
}