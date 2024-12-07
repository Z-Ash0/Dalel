import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.color,
      this.bgColor,
      required this.onPressed});
  final String text;
  final Color? color;
  final Color? bgColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: bgColor ?? AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.poppinsW500Size24
              .copyWith(color: color ?? Colors.white),
        ),
      ),
    );
  }
}
