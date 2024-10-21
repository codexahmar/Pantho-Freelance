import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';

import 'package:another_stepper/another_stepper.dart';
import 'package:pantho/widgets/custom_text.dart';

class GiveBlood extends StatefulWidget {
  const GiveBlood({super.key});

  @override
  State<GiveBlood> createState() => _GiveBloodState();
}

class _GiveBloodState extends State<GiveBlood> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: AppTexts.giveBlood,
          fontSize: 24,
          color: AppColors.dark,
          fontWeight: FontWeight.w400,
        ),
        centerTitle: true,
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
            width: 17.w, // Responsive width
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Chapter 1",
                  fontSize: 12,
                  color: Color(0xFFFABB11),
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 10.h), // Responsive height
                CustomText(
                  text: "Guidelines for Donation",
                  fontSize: 19,
                  color: AppColors.greyC,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 10.h), // Responsive height
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.w), // Responsive padding
                    child: AnotherStepper(
                      stepperDirection: Axis.vertical,
                      stepperList: [
                        StepperData(
                          title: StepperText(
                            AppTexts.stepperOne,
                            textStyle: robotoMediumStyle.copyWith(
                              fontSize: 14.sp, // Responsive font size
                              color: AppColors.greyC,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          iconWidget: Icon(
                            Icons.circle,
                            color: Colors.green,
                          ),
                        ),
                        StepperData(
                          title: StepperText(
                            AppTexts.stepperTwo,
                            textStyle: robotoMediumStyle.copyWith(
                              fontSize: 14.sp, // Responsive font size
                              color: AppColors.greyC,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          iconWidget:
                              Icon(Icons.circle, color: Color(0xFF758FA4)),
                        ),
                        StepperData(
                          title: StepperText(
                            AppTexts.stepperThree,
                            textStyle: robotoMediumStyle.copyWith(
                              fontSize: 14.sp, // Responsive font size
                              color: AppColors.greyC,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          iconWidget:
                              Icon(Icons.circle, color: Color(0xFF758FA4)),
                        ),
                        StepperData(
                          title: StepperText(
                            AppTexts.stepperFour,
                            textStyle: robotoMediumStyle.copyWith(
                              fontSize: 14.sp, // Responsive font size
                              color: AppColors.greyC,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          iconWidget:
                              Icon(Icons.circle, color: Color(0xFF758FA4)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h, // Responsive height
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "How To Get Ready",
                        fontSize: 19,
                        color: AppColors.greyC,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 20.h), // Responsive height
                      CustomText(
                        text: AppTexts.guidelines,
                        fontSize: 14,
                        color: AppColors.greyC,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 20.h), // Responsive height
                    ],
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 74.w,
                                  height: 74.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.button,
                                  ),
                                  child: Image.asset(
                                    color: AppColors.white,
                                    Assets.assetsIconsGlass,
                                    scale: 3,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: "Step 1",
                                        fontSize: 12,
                                        color: AppColors.dark,
                                        fontWeight: FontWeight.w400),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    CustomText(
                                      text: "Drink Extra Liquids",
                                      fontSize: 17,
                                      color: AppColors.greyC,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomText(
                                text:
                                    "Drink an extra 16 oz. of water before \nyour appointment",
                                fontSize: 12,
                                color: AppColors.dark,
                                fontWeight: FontWeight.w500)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h, // Responsive height
                ),
                CustomText(
                  text: AppTexts.guidelines,
                  fontSize: 14,
                  color: AppColors.greyC,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 20.h), // Responsive height
                CustomText(
                  text: AppTexts.guidelines,
                  fontSize: 14,
                  color: AppColors.greyC,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
