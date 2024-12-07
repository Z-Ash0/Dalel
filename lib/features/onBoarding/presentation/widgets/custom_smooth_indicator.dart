import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({
    super.key,
    required this.pageController,
    required this.index,
  });

  final PageController pageController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: index,
      effect: const ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
