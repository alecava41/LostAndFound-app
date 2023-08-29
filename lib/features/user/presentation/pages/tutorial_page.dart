import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../core/presentation/tutorial/widgets/carousel_item.dart';
import '../widgets/user/faq_tile.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreen();
}

class _TutorialScreen extends State<TutorialScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final List<FaqTile> qaList = [
    const FaqTile(
      answer:
          '1. Report the loss of the item by going to the "Insert Item" section; \n\n2. As soon as another user finds the item, you will receive a notification informing you of its retrieval; \n\n3. Claim the item by answering a question to verify your ownership; \n\n4. Chat with the user who found the item for to arrange its return.',
      question: "What should I do if I have lost an item?",
    ),
    const FaqTile(
      answer:
          "1. Report the discovery of the item by going to the \"Insert Item\" section. You will need to provide a question to verify the legitimacy of any potential claim request. \n\n2. Wait for the owner to receive a notification about the recovery of its item. \n\n3. Accept or reject a user's claim based on the answer he gives to the the question to verify the ownership. \n\n4.Chat with the owner of the item to arrange its return.",
      question: "What should I do if I've found a missing item?",
    ),
    const FaqTile(
      answer:
          "If many people say they own the item you found, check their answers and pick the best one. Also, you can ask more questions by chatting with the other, to make sure who the real owner is.",
      question: "What happens if an item I've found receives more than one claim?",
    ),
    const FaqTile(
      answer: "You can reach out us via Telegram: \n\n - @alecava41 \n\n - @backToFrancesco",
      question: "How to report bugs or get in touch with the developers",
    ),
    // add more question here
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PersonalizedColor.mainColor,
        appBar: AppBar(
          title: const Text("Tutorial"),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _carouselSlider(),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: qaList.length,
                      itemBuilder: (context, index) {
                        return qaList[index];
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? PersonalizedColor.mainColor : Colors.black,
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
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 360.0,
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                carouselItem('assets/images/input_item.png', 'Report a Lost Item',
                    'Input the item details in the app to report it as lost.'),
                carouselItem('assets/images/report_item.png', 'Report a Found Item',
                    'Notify others by reporting a found item\nthrough the app.'),
                carouselItem('assets/images/return_item.png', 'Arrange Item Return',
                    'Connect with the finder via messaging to arrange\na safe meetup location for item return.'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
