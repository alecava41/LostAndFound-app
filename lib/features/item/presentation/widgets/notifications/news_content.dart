import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/core/presentation/widgets/no_content_page.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/custom_notification.dart';

class NewsContent extends StatelessWidget {
  final int? newNewsId;

  const NewsContent({super.key, required this.newNewsId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (ctx, state) {
        return SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              Future block = ctx.read<NewsBloc>().stream.first;
              ctx.read<NewsBloc>().add(const NewsEvent.newsRefreshed());
              await block;
            },
            child: state.isLoading
                ? const CustomCircularProgress(size: 100)
                : state.hasLoadingError
                    ? ErrorPage(onRetry: () => ctx.read<NewsBloc>().add(NewsEvent.newsCreated(newNewsId)))
                    : state.news.isEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const SingleChildScrollView(
                              physics: AlwaysScrollableScrollPhysics(),
                              child: NoContentPage(
                                image: 'assets/images/no-news.png',
                                title: 'No news waiting for you',
                                subtitle:
                                    'News will be displayed as soon as someone inserts an item that may match one of yours',
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: state.news.length,
                            itemBuilder: (context, index) {
                              final news = state.news[index];
                              return CustomNotification(
                                id: news.id,
                                subjectItemTitle: news.subject.title,
                                subjectItemType: news.subject.type,
                                hasUserImage: news.targetUser.hasImage,
                                targetItemId: news.targetId,
                                targetUserId: news.targetUser.id,
                                targetUsername: news.targetUser.username,
                                token: state.token,
                                opened: news.opened,
                              );
                            },
                          ),
          ),
        );
      },
    );
  }
}
