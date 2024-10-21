import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Reusable Text Widget
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: robotoMediumStyle.copyWith(
        fontSize: fontSize.sp, // Responsive font size
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
