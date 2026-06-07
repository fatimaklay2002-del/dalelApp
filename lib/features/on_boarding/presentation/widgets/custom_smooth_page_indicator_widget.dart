import 'package:dalel_project/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicatorWidget extends StatelessWidget {
  final PageController pageController;

  const CustomSmoothPageIndicatorWidget({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 7,
        dotWidth: 10,
      ),
    );
  }
}
