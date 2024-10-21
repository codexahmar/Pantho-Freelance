import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';

import 'package:pantho/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;

  const DonationCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 191,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: AppColors.secondary.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30)),
            child: Image.asset(color: AppColors.primary, imageAsset),
          ),
          SizedBox(height: 13.h),
          Text(
            title,
            style: robotoMediumStyle.copyWith(
              fontSize: 16,
              color: AppColors.greyC,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            description,
            style: robotoMediumStyle.copyWith(
              fontSize: 10.sp,
              color: AppColors.dark,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
