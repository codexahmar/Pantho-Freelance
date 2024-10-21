// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/app_styles.dart';

import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final Color? buttonColor;
  final Color borderColor;
  final String title;
  final Color? titleColor;
  // Added optional parameters for height, width, and border radius
  final double? height;
  final double? width;
  final double? borderRadius;

  const CustomButton({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderColor = AppColors.transparent,
    required this.title,
    this.titleColor,
    this.height, // New parameter
    this.width, // New parameter
    this.borderRadius, // New parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 49.93, // Use optional height or default
        width: width ?? 229.94, // Use optional width or default
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.button,
          borderRadius: BorderRadius.circular(
              borderRadius ?? 10), // Use optional border radius or default
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: Text(
            title,
            style: robotoMediumStyle.copyWith(
              fontSize: 15,
              color: titleColor ?? AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
