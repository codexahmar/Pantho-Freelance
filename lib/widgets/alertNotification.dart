import 'package:flutter/material.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Alertnotification extends StatefulWidget {
  const Alertnotification({super.key});

  @override
  State<Alertnotification> createState() => _AlertnotificationState();
}

class _AlertnotificationState extends State<Alertnotification> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 414,
        height: 141,
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.assetsIconsLogo,
                    scale: 2,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    text: "Pantho",
                    fontSize: 12,
                    color: AppColors.white,
                  ),
                  SizedBox(
                    width: 210.w,
                  ),
                  CustomText(
                    text: "Now",
                    fontSize: 12,
                    color: AppColors.white,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              CustomText(
                  text: "Urgent Required O negative",
                  fontSize: 15,
                  color: AppColors.white),
              SizedBox(height: 2.h),
              CustomText(
                  text: "Compellingly aggregate extensible innovation rather ",
                  fontSize: 11,
                  color: AppColors.white)
            ],
          ),
        ),
      );
  }
}
