import 'package:flutter/material.dart';
import 'package:lms/Features/boarding/data/models/boarding_model.dart';
import 'page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pageController,
    required this.index,
  });
  final PageController pageController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: boardingList.length,
      itemBuilder: (context, index) {
        return PageViewItem(
          index: index,
          image: boardingList[index].image,
          title: boardingList[index].title,
          description: boardingList[index].body,
        );
      },
    );
  }
}