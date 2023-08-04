import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/notifications/custom_notification.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(listener: (ctx, state) {
      final loadFailureOrSuccess = state.loadFailureOrSuccess;

      if (loadFailureOrSuccess != null) {
        loadFailureOrSuccess.fold(
            (failure) => {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      padding: const EdgeInsets.all(30),
                      backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
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
    }, builder: (ctx, state) {
      return SafeArea(
        top: false,
        child: RefreshIndicator(
          onRefresh: () async {
            Future block = ctx.read<NewsBloc>().stream.first;
            ctx.read<NewsBloc>().add(const NewsEvent.newsRefreshed());
            await block;
          },
          child: state.isLoading
              ? const CustomCircularProgress(size: 100)
              : state.news.isEmpty
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
                              Icons.notifications_none,
                              size: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "There aren't notifications waiting for you",
                              style: TextStyle(fontSize: 25),
                            ),
                          ]),
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.news.length,
                      itemBuilder: (context, index) {
                        final news = state.news[index];
                        return CustomNotification(
                            subjectItemTitle: news.subject.title,
                            subjectItemType: news.subject.type,
                            hasUserImage: news.targetUser.hasImage,
                            targetItemId: news.targetId,
                            targetUserId: news.targetUser.id,
                            targetUsername: news.targetUser.username,
                            token: state.token,
                            opened: news.opened);
                      },
                    ),
        ),
      );
    });
  }
}
