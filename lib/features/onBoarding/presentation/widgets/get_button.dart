import 'package:dalel_app/core/functions/custom_navigator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_app/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:dalel_app/features/onBoarding/functions/on_boarding.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton({super.key, required this.index, required this.controller});
  final int index;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return index != onBoardingList.length - 1
        ? CustomButton(
            text: AppStrings.next,
            onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 750),
                curve: Curves.easeInOut),
          )
        : Column(
            children: [
              CustomButton(
                text: AppStrings.createAccount,
                onPressed: () {
                  saveVisited();
                  customReplacementNavigator(context, SignUpView.path);
                },
              ),
              const SizedBox(height: 17),
              InkWell(
                onTap: () {
                  saveVisited();
                  customReplacementNavigator(context, SignUpView.path);
                },
                child: Text(AppStrings.loginNow,
                    style: AppTextStyles.poppinsW500Size24.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        decoration: TextDecoration.underline)),
              )
            ],
          );
  }
}
