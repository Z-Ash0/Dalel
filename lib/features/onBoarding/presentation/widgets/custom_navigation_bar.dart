import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/features/onBoarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, required this.onTap, this.index});
  final VoidCallback onTap;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return (index ?? 0) == onBoardingList.length - 1
        ? const SizedBox(height: 38)
        : InkWell(
            onTap: onTap,
            child: const Align(
              alignment: Alignment.centerRight,
              child:
                  Text(AppStrings.skip, style: AppTextStyles.poppinsW500Size24),
            ),
          );
  }
}
