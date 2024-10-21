import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/routes/app_routes.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/custom_infoTile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/assets.dart';

class Verfication extends StatefulWidget {
  const Verfication({super.key});

  @override
  State<Verfication> createState() => _VerficationState();
}

class _VerficationState extends State<Verfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          Assets.assetsIconsArrowRight,
          scale: 4,
        ),
        actions: [
          Image.asset(
            Assets.assetsIconsMenuLeft,
            scale: 4,
          ),
          SizedBox(
            width: 17.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset(
                Assets.assetsImagesLogo1,
                scale: 4,
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Text(
              AppTexts.onboardingDescription1,
              textAlign: TextAlign.center,
              style: robotoMediumStyle.copyWith(
                fontSize: 15.sp,
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            InfoTile(
                title: "Phone Verification",
                subtitle: "+ (1) 32433434",
                assetImage: Assets.assetsIconsPhone),
            SizedBox(
              height: 62.h,
            ),
            CustomButton(
              onTap: () {
                Get.offNamed(AppRoutes.bottomBar);
              },
              title: AppTexts.buttonText4,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              AppTexts.loginText,
              textAlign: TextAlign.center,
              style: robotoMediumStyle.copyWith(
                fontSize: 15.sp,
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
