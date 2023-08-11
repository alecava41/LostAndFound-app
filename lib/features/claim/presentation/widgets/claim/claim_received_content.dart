import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/widgets/claim/claimed_item_card.dart';

class ClaimReceivedContent extends StatelessWidget {
  const ClaimReceivedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClaimBloc, ClaimState>(
        builder: (ctx, state) => RefreshIndicator(
              onRefresh: () async {
                Future block = ctx.read<ClaimBloc>().stream.first;
                ctx.read<ClaimBloc>().add(const ClaimEvent.receivedClaimsRefreshed());
                await block;
              },
              child: state.isLoadingReceived
                  ? const CustomCircularProgress(size: 100)
                  : state.claimsReceived.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: const SingleChildScrollView(
                            physics: AlwaysScrollableScrollPhysics(),
                            child: Center(
                              child: Column(children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Icon(
                                  Icons.connect_without_contact,
                                  size: 80,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "No received claims yet",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ]),
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: state.claimsReceived.length,
                          itemBuilder: (context, index) {
                            final claim = state.claimsReceived[index];
                            return Container(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: ClaimedItemCard(
                                claim: claim,
                                token: state.token,
                              ),
                            );
                          },
                        ),
            ));
  }
}
