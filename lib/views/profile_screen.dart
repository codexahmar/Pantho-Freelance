import 'package:flutter/material.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 243.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(90)),
                ),
                child: ClipRRect(
                  child: Image.asset(
                    Assets.assetsImagesAvatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60.h,
                left: 10.w,
                child: Image.asset(
                  Assets.assetsIconsArrowRight,
                  scale: 3,
                ),
              ),
              Positioned(
                top: 60.h,
                right: 10.w,
                child: Image.asset(
                  Assets.assetsIconsMenuLeft,
                  color: AppColors.white,
                  scale: 3,
                ),
              ),
              Positioned(
                  top: 200.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: 66.w,
                    height: 66.h,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: AppColors.secondary.withOpacity(0.7),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ]),
                    child: Image.asset(
                      Assets.assetsImagesCircularAvatar,
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                  top: 225.h,
                  left: 195.w,
                  right: 0,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          Assets.assetsImagesPinkDrop,
                          scale: 3.5,
                        ),
                      ),
                      Positioned(
                        top: 2.h,
                        left: 12.w,
                        child: Container(
                          height: 26.h,
                          width: 26.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.white, width: 1),
                              shape: BoxShape.circle,
                              color: AppColors.dark),
                          child: Center(
                            child: CustomText(
                              text: "A+",
                              fontSize: 10.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(height: 55),
          CustomText(
              text: "Jakob Passaquindici",
              fontSize: 20,
              color: AppColors.greyA,
              fontWeight: FontWeight.w400),
          const SizedBox(height: 20),
          Container(
            width: 150.w,
            height: 37.h,
            child: Center(
              child: CustomText(
                  text: "A Positive (A+)",
                  fontSize: 12,
                  color: AppColors.greyA,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () {},
                title: "Request Now",
                buttonColor: AppColors.secondary,
                width: 123.w,
                height: 32.h,
                borderRadius: 30,
              ),
              SizedBox(width: 10),
              Container(
                  width: 50,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.button, width: 1),
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Image.asset(Assets.assetsIconsChat, scale: 4)),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: 359,
            height: 278,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Image.asset(Assets.assetsImages1, scale: 4),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(Assets.assetsImagesAvatar2),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                text: "The Flexible Future of ography",
                                fontSize: 12,
                                color: AppColors.greyA,
                                fontWeight: FontWeight.w400),
                            SizedBox(width: 38),
                            Image.asset(Assets.assetsIconsDownArrow, scale: 3),
                          ],
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Jakob Arcand",
                                style: TextStyle(
                                  color: AppColors.greyB,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " - 12 min read",
                                style: TextStyle(
                                  color: Color(0xFFFABB11),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 359,
            height: 278,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Image.asset(Assets.assetsImages1, scale: 4),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(Assets.assetsImagesAvatar2),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                text: "The Flexible Future of ography",
                                fontSize: 12,
                                color: AppColors.greyA,
                                fontWeight: FontWeight.w400),
                            SizedBox(width: 38),
                            Image.asset(Assets.assetsIconsDownArrow, scale: 3),
                          ],
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Jakob Arcand",
                                style: TextStyle(
                                  color: AppColors.greyB,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " - 12 min read",
                                style: TextStyle(
                                  color: Color(0xFFFABB11),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
