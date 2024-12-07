import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/custom_navigation_bar.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  static const path = '/OnBoardingView';
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(26),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              const CustomNavigationBar(),
              const SizedBox(height: 32),
              OnBoardingBody(
                pageController: _controller,
              ),
              const SizedBox(height: 30),
              const CustomButton(text: AppStrings.next),
            ],
          ),
        ),
      ),
    );
  }
}
