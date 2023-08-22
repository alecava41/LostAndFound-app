import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/claim_received_content.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:badges/badges.dart' as badges;

import '../../../../injection_container.dart';
import '../widgets/claim/claim_sent_content.dart';

class ClaimsScreen extends StatelessWidget {
  final int? newClaimId;
  final int? tab;

  const ClaimsScreen({super.key, this.tab, this.newClaimId});

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO (@alecava41) add logic
                  badges.Badge(
                    badgeContent: Text("9+", style: TextStyle(fontSize: 12),),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Received claims",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO (@alecava41) add logic
                  badges.Badge(
                    showBadge: true,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Your claims",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            )
          ]),
        ),
        body: SafeArea(
          top: false,
          child: BlocProvider(
            create: (_) => sl<ClaimBloc>()
              ..add(ClaimEvent.claimContentCreated(tab, newClaimId)),
            child: BlocConsumer<ClaimBloc, ClaimState>(
              listener: (ctx, state) {
                if (state.needToSwitchTab != null && state.needToSwitchTab!) {
                  DefaultTabController.of(ctx)
                      .animateTo(DefaultTabController.of(ctx).length - 1);
                }

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
                                        genericFailure: () =>
                                            'Server error. Please try again later.',
                                        networkFailure: () =>
                                            'No internet connection available. Check your internet connection.',
                                        orElse: () => 'Unknown error'),
                                    style: const TextStyle(fontSize: 20)),
                              ),
                            )
                          },
                      (success) => {});
                }
              },
              builder: (ctx, state) => TabBarView(
                controller: DefaultTabController.of(ctx),
                children: const [ClaimReceivedContent(), ClaimSentContent()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClaimsScreenArguments {
  final int? claimId;
  final int? tab;

  const ClaimsScreenArguments({this.tab, this.claimId});
}
