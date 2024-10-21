import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/models/onboarding_model.dart';
import 'package:pantho/routes/app_routes.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_styles.dart';
import '../widgets/custom_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController pageController = PageController();
  int currentIndex = 0;

  final List<OnboardingModel> _items = [
    OnboardingModel(
      title: AppTexts.onboardingTitle1,
      description: AppTexts.onboardingDescription1,
      imagePath: Assets.assetsImagesOnboarding1,
    ),
    OnboardingModel(
      title: AppTexts.onboardingTitle2,
      description: AppTexts.onboardingDescription2,
      imagePath: Assets.assetsImagesOnboarding2,
    ),
    OnboardingModel(
      title: AppTexts.onboardingTitle3,
      description: AppTexts.onboardingDescription3,
      imagePath: Assets.assetsImagesOnboarding3,
    ),
  ];

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
      body: PageView.builder(
        itemCount: _items.length,
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child: Image.asset(
                    _items[index].imagePath,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  _items[index].title,
                  style: montserratSemiBoldStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _items[index].description,
                  textAlign: TextAlign.center,
                  style: robotoRegularStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.greyA,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                DotsIndicator(
                  dotsCount: _items.length,
                  position: index,
                  decorator: const DotsDecorator(
                    activeColor: AppColors.primary,
                    color: AppColors.greyB,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  title: AppTexts.buttonText1,
                  onTap: () {
                    Get.offNamed(AppRoutes.login);
                  },
                  buttonColor: AppColors.primary.withOpacity(0.80),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    if (currentIndex < _items.length - 1) {
                      pageController.jumpToPage(currentIndex + 1);
                    }
                  },
                  child: Text(
                    AppTexts.skipStepText,
                    style: robotoMediumStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.dark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
