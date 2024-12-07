import 'package:dalel_app/core/functions/custom_navigator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedSplashScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppTextStyles.pacificoWeight400Size64,
        ),
      ),
    );
  }
}

void delayedSplashScreen(context) {
  Future.delayed(
    const Duration(seconds: 2),
    () => customReplacementNavigator(context, OnBoardingView.path),
  );
}
