import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/user/presentation/widgets/tutorial/carousel_detailed_tutorial.dart';
import 'package:sizer/sizer.dart';


class FoundItemTutorial extends StatefulWidget {
  const FoundItemTutorial({super.key});

  @override
  State<FoundItemTutorial> createState() => _FoundItemTutorialState();
}

class _FoundItemTutorialState extends State<FoundItemTutorial> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _carouselSlider(),
      ],
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      height: isActive ? 48 : 32,
      width: isActive ? 12 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.onBackground,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  _carouselSlider() {
    return Column(
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(
              height: 65.h,
              width: 90.w,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  carouselDetailedTutorialItem(context,
                      'assets/images/create-report.png',
                      AppLocalizations.of(context)!.tutorialFoundItemTitle1,
                      AppLocalizations.of(context)!.tutorialFoundItemContent1),
                  carouselDetailedTutorialItem(context,
                      'assets/images/manage-claim.png',
                      AppLocalizations.of(context)!.tutorialFoundItemTitle2,
                      AppLocalizations.of(context)!.tutorialFoundItemContent2),
                  carouselDetailedTutorialItem(context,
                      'assets/images/chat.png',
                      AppLocalizations.of(context)!.tutorialFoundItemTitle3,
                      AppLocalizations.of(context)!.tutorialFoundItemContent3),
                  carouselDetailedTutorialItem(context,
                      'assets/images/solved.png',
                      AppLocalizations.of(context)!.tutorialFoundItemTitle4,
                      AppLocalizations.of(context)!.tutorialFoundItemContent4),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: _currentPage == _numPages - 1 ? null : () {
                    setState(() {
                      if (_currentPage == _numPages - 1) {
                        _currentPage = 0;
                      } else {
                        _currentPage++;
                      }
                    });

                    var animationOffSet = 70.h;
                    _pageController.animateTo(
                      animationOffSet*_currentPage,
                      duration: const Duration(
                          milliseconds:
                              500),
                      curve: Curves
                          .easeInOut,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    _currentPage == _numPages - 1? AppLocalizations.of(context)!.tutorialCompleted : AppLocalizations.of(context)!.next,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
