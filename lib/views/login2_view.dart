import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/routes/app_routes.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/custom_infoTile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login2View extends StatefulWidget {
  const Login2View({super.key});

  @override
  State<Login2View> createState() => _Login2ViewState();
}

class _Login2ViewState extends State<Login2View> {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context, designSize: const Size(375, 812));

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
              height: 30.h,
            ),
            Center(
              child: Image.asset(
                Assets.assetsImagesLogo1,
                width: 0.5.sw,
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
              height: 20.h,
            ),
            InfoTile(
              title: "Email",
              subtitle: "dummy@gmail.com",
              assetImage: Assets.assetsIconsMail,
              imageHeight: 15,
            ),
            SizedBox(
              height: 15.h,
            ),
            InfoTile(
                title: "Password",
                subtitle: "****",
                assetImage: Assets.assetsIconsPassword),
            SizedBox(
              height: 62.h,
            ),
            CustomButton(
              onTap: () {
                Get.offNamed(AppRoutes.verificationScreen);
              },
              title: AppTexts.buttonText3,
              borderColor: AppColors.button,
              buttonColor: AppColors.button,
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
