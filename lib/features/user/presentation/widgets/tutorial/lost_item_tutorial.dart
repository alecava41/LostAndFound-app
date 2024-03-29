import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/user/presentation/widgets/tutorial/carousel_detailed_tutorial.dart';
import 'package:sizer/sizer.dart';


class LostItemTutorial extends StatefulWidget {
  const LostItemTutorial({super.key});

  @override
  State<LostItemTutorial> createState() => _LostItemTutorialState();
}

class _LostItemTutorialState extends State<LostItemTutorial> {
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
        color: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onBackground,
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
                  carouselDetailedTutorialItem(
                      context,
                      'assets/images/create-report.png',
                      AppLocalizations.of(context)!.tutorialLostItemTitle1,
                      AppLocalizations.of(context)!.tutorialLostItemContent1),
                  carouselDetailedTutorialItem(
                      context,
                      'assets/images/create-claim.png',
                      AppLocalizations.of(context)!.tutorialLostItemTitle2,
                      AppLocalizations.of(context)!.tutorialLostItemContent2),
                  carouselDetailedTutorialItem(
                      context,
                      'assets/images/chat.png',
                      AppLocalizations.of(context)!.tutorialLostItemTitle3,
                      AppLocalizations.of(context)!.tutorialLostItemContent3),
                  carouselDetailedTutorialItem(
                      context,
                      'assets/images/solved.png',
                      AppLocalizations.of(context)!.tutorialLostItemTitle4,
                      AppLocalizations.of(context)!.tutorialLostItemContent4),
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
                  onPressed: _currentPage == _numPages - 1
                      ? null
                      : () {
                          setState(() {
                            _currentPage++;
                          });

                          var animationOffSet = 70.h;
                          _pageController.animateTo(
                            animationOffSet * _currentPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                  style: ElevatedButton.styleFrom(
                    disabledForegroundColor: Theme.of(context).colorScheme.surfaceVariant,
                    disabledBackgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ).copyWith(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Theme.of(context).colorScheme.onPrimary.withOpacity(0.3);
                        }
                        return Colors.transparent;
                      },
                    ),
                  ),
                  child: Text(
                    _currentPage == _numPages - 1
                        ? AppLocalizations.of(context)!.tutorialCompleted
                        : AppLocalizations.of(context)!.next,
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
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
