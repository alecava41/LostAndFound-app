import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/claimed_status_card.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/info_claims_box.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../core/presentation/widgets/no_content_page.dart';

class ClaimSentContent extends StatelessWidget {
  const ClaimSentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClaimBloc, ClaimState>(
      builder: (ctx, state) => RefreshIndicator(
        onRefresh: () async {
          Future block = ctx.read<ClaimBloc>().stream.first;
          ctx.read<ClaimBloc>().add(const ClaimEvent.sentClaimsRefreshed());
          await block;
        },
        child: state.isLoadingSent
            ? const CustomCircularProgress(size: 100)
            : state.claimsSent.isEmpty
                ? SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: NoContentPage(
                        image: 'assets/images/no-created-claims.png',
                        title: AppLocalizations.of(context)!.noContentClaimSentTitle,
                        subtitle: AppLocalizations.of(context)!.noContentClaimSentSubtitle,
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.claimsSent.length,
                          itemBuilder: (context, index) {
                            final claim = state.claimsSent[index];
                            return Container(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: ClaimedStatusCard(
                                token: state.token,
                                claim: claim,
                              ),
                            );
                          },
                        ),
                      ),
                      InfoClaimsBox(text: AppLocalizations.of(context)!.claimSentTutorial)
                    ],
                  ),
      ),
    );
  }
}
