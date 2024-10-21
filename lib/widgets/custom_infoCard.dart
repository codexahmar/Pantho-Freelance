import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/theme/app_colors.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String count;
  final Color color;
  final String iconPath;
  final Color? imageColor;

  const InfoCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.count,
    required this.color,
    required this.iconPath,
    this.imageColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 160,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(30)),
            child: Image.asset(
              iconPath,
              color: imageColor,
            ),
          ),
          SizedBox(height: 13),
          Text(
            title,
            style: robotoMediumStyle.copyWith(
              fontSize: 14,
              color: AppColors.greyC,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 13),
          Container(
            width: 51,
            height: 19,
            decoration: BoxDecoration(
                color: AppColors.button,
                borderRadius: BorderRadius.circular(48)),
            child: Center(
                child: Text(
              count,
              style: TextStyle(fontSize: 12, color: AppColors.white),
            )),
          )
        ],
      ),
    );
  }
}
