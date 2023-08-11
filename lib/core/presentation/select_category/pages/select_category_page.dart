import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/select_category/bloc/category_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../injection_container.dart';
import '../widgets/category_item.dart';

class CategorySelectionScreen extends StatelessWidget {
  final bool removeAllOption;

  const CategorySelectionScreen({super.key, this.removeAllOption = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryBloc>(
        create: (_) => sl<CategoryBloc>()..add(const CategoryEvent.categoryCreated()),
        child: BlocConsumer<CategoryBloc, CategoryState>(
          listener: (ctx, state) {
            if (state.loadFailureOrSuccess != null && state.loadFailureOrSuccess!.isLeft()) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                padding: EdgeInsets.all(30),
                backgroundColor: Colors.red,
                content: Text('Server error. Please try again later.', style: TextStyle(fontSize: 20)),
              ));
            }
          },
          builder: (ctx, state) {
            return Scaffold(
                backgroundColor: PersonalizedColor.backGroundColor,
                appBar: AppBar(
                  title: const Text(
                    'Choose a category',
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.white,
                  iconTheme: const IconThemeData(color: Colors.black),
                ),
                body: () {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(value: null),
                    );
                  } else {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: (removeAllOption ? state.categories.drop(1) : state.categories)
                            .map((cat) => CategoryItem(
                                  categoryName: cat.name,
                                  icon: IconData(cat.icon, fontFamily: 'MaterialIcons'),
                                  onTap: () {
                                    Navigator.pop(context, Pair<int, String>(cat.id, cat.name));
                                  },
                                ))
                            .toList(),
                      ),
                    );
                  }
                }());
          },
        ));
  }
}