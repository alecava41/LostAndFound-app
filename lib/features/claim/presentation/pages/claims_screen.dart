import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/claim_received_content.dart';

import 'package:badges/badges.dart' as badges;

import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../widgets/claim/claim_sent_content.dart';

class ClaimsScreen extends StatelessWidget {
  final int? newClaimId;
  final int? tab;

  const ClaimsScreen({super.key, this.tab, this.newClaimId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BadgeBloc, BadgeState>(
      builder: (ctx, state) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: DefaultTabController(
          length: 2,
          initialIndex: tab != null ? tab! : 0,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                title: Text(
                  AppLocalizations.of(context)!.claim(2),
                  style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                ),
                backgroundColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
                iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          badges.Badge(
                            badgeContent: Text(
                              "${state.unreadReceivedClaims}",
                              style: const TextStyle(fontSize: 12),
                            ),
                            showBadge: state.unreadReceivedClaims > 0,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            AppLocalizations.of(context)!.receivedClaims,
                            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          badges.Badge(
                            showBadge: state.hasUnreadSentClaims,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            AppLocalizations.of(context)!.yourClaims,
                            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                          ),
                        ],
                      ),
                    )
                  ],
                  onTap: (value) {
                    if (value == 1) {
                      ctx.read<BadgeBloc>().add(const BadgeEvent.sentClaimRead());
                    }
                  },
                ),
              ),
              body: BlocProvider(
                create: (_) => sl<ClaimBloc>()..add(ClaimEvent.claimContentCreated(newClaimId)),
                child: BlocBuilder<ClaimBloc, ClaimState>(
                  builder: (ctx, state) => state.hasLoadingError
                      ? ErrorPage(onRetry: () => ctx.read<ClaimBloc>().add(ClaimEvent.claimContentCreated(newClaimId)))
                      : const TabBarView(
                          children: [ClaimReceivedContent(), ClaimSentContent()],
                        ),
                ),
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
