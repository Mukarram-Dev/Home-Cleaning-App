import 'package:cleaningapp/config/theme/colors.dart';
import 'package:cleaningapp/model/onboarding.dart';
import 'package:cleaningapp/utils/app_constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final List<OnBoarding> onBoardingList;
  final int currentIndex;
  final PageController pageController;

  OnboardingCard({
    Key? key,
    required this.onBoardingList,
    required this.currentIndex,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 35, right: 34),
              child: Text(
                AppConstants.pageViewList[currentIndex].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: DotsIndicator(
                dotsCount: AppConstants.pageViewList.length,
                position: currentIndex,
                decorator: DotsDecorator(
                  color: Colors.white,
                  size: const Size.square(8.0),
                  activeSize: const Size(20.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  activeColor: AppColors.secondaryColor,
                ),
              ),
            ),
          ],
        ));
  }
}
