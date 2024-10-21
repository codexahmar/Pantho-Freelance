import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';

class NotificationItem extends StatelessWidget {
  final String message;
  final String time;
  final IconData? icon;

  const NotificationItem({
    Key? key,
    required this.message,
    required this.time,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 354,
        height: 90,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(Assets.assetsImagesCircularAvatar),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      message,
                      style: robotoRegularStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.dark,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      time,
                      style: robotoRegularStyle.copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
              if (icon != null) // Check if icon is provided
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(icon,
                      size: 20, color: AppColors.dark), // Display icon
                ),
              Image.asset(
                Assets.assetsImagesRectangle,
                height: 57,
                width: 57,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
