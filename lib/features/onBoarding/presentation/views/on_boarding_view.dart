import 'package:dalel_app/core/functions/custom_navigator.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/custom_navigation_bar.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/get_button.dart';
import 'package:dalel_app/features/onBoarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});
  static const path = '/OnBoardingView';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int index = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              CustomNavigationBar(
                onTap: () =>
                    customReplacementNavigator(context, SignUpView.path),
                index: index,
              ),
              const SizedBox(height: 32),
              OnBoardingBody(
                pageController: _controller,
                onPageChanged: (pageIndex) {
                  setState(() => index = pageIndex);
                },
              ),
              GetButton(index: index, controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
