import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/select_category/bloc/category_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';


import '../../../../injection_container.dart';
import '../../../../utils/colors/custom_color.dart';
import '../../../domain/entities/category.dart';
import '../widgets/category_item.dart';

class CategorySelectionScreen extends StatelessWidget {
  final bool removeAllOption;

  const CategorySelectionScreen({super.key, this.removeAllOption = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryBloc>(
      create: (_) => sl<CategoryBloc>()..add(const CategoryEvent.categoryCreated()),
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (ctx, state) {
          return AnnotatedRegion(
            value: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
                backgroundColor: Theme.of(context).colorScheme.background,
                appBar: AppBar(
                  title: Text(
                    AppLocalizations.of(context)!.categoryPageTitle,
                    style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
                  ),
                  backgroundColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
                  iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
                ),
                body: () {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(value: null),
                    );
                  } else if (state.hasLoadingError) {
                    return ErrorPage(onRetry: () => ctx.read<CategoryBloc>().add(const CategoryEvent.categoryCreated()));
                  } else {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: (removeAllOption
                                ? state.categories
                                : () {
                                    List<Category> modifiableList = [];
                                    modifiableList = state.categories.toList();
                                    modifiableList.insert(
                                      0,
                                      Category(
                                          id: 0,
                                          name: AppLocalizations.of(context)!.categoryAllTitle,
                                          icon: 0xe1f7,
                                          description: AppLocalizations.of(context)!.categoryAllDescription),
                                    );
                                    return modifiableList;
                                  }())
                            .map((cat) => CategoryItem(
                                  categoryName: cat.name,
                                  icon: IconData(cat.icon, fontFamily: 'MaterialIcons'),
                                  onTap: () {
                                    Navigator.pop(context, Pair<int, String>(cat.id, cat.name));
                                  },
                                  description: cat.description,
                                ))
                            .toList(),
                      ),
                    );
                  }
                }()),
          );
        },
      ),
    );
  }
}
