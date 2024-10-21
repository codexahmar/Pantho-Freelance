import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/routes/app_routes.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';

import '../constants/assets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
          const SizedBox(
            width: 17,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset(
                Assets.assetsImagesLogo1,
                scale: 4,
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            Text(
              AppTexts.onboardingDescription1,
              textAlign: TextAlign.center,
              style: robotoMediumStyle.copyWith(
                fontSize: 15,
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            CustomButton(
              onTap: () {},
              title: AppTexts.buttonText2,
              borderColor: AppColors.button,
              buttonColor: AppColors.background,
              titleColor: AppColors.button,
            ),
            const SizedBox(
              height: 31,
            ),
            CustomButton(
              onTap: () {
                Get.offNamed(AppRoutes.login2);
              },
              title: AppTexts.buttonText3,
            ),
            const Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dramatically unleash ',
                    style: robotoMediumStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.dark,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'cutting-edge vortals',
                    style: robotoMediumStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.dark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' before maintainable platforms.',
                    style: robotoMediumStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.dark,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
