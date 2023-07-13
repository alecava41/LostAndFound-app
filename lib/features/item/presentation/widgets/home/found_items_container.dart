import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_card.dart';

class FoundItemsContainer extends StatelessWidget {
  const FoundItemsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (ctx, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Text("Your found items", style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 25),
            child: SizedBox(
              height: 240,
              child: state.foundItems.isNotEmpty
                  ? ListView(
                scrollDirection: Axis.horizontal,
                children: state.foundItems.map(
                        (item) =>
                        CustomCard(
                            id: item.id,
                            text: item.title,
                            claims: item.claims,
                            token: state.token,
                        )
                ).toList(),
              )
              // TODO: maybe we can do better when there aren't items (UI PoV) (both lost and found)
                  : const Center(
                  child: Text("You have no found item inserted yet :)", style: TextStyle(fontSize: 20))
              ),
            ),
          ),
        ],
      );
    });
  }

}