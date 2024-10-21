import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/custom_container.dart';

class NearbyDonor extends StatefulWidget {
  const NearbyDonor({super.key});

  @override
  State<NearbyDonor> createState() => _NearbyDonorState();
}

class _NearbyDonorState extends State<NearbyDonor> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context); // Initialize ScreenUtil

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
            width: 17.w, // Responsive width
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              AppTexts.nearbyDonors,
              style: robotoMediumStyle.copyWith(
                fontSize: 17.sp, // Responsive font size
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 60.h, // Responsive height
            ),
            Stack(
              children: [
                Container(
                  child: Image.asset(height: 380.h, Assets.assetsImagesCircle),
                ),
                Positioned(
                  bottom: 10.h, // Responsive position
                  left: 270.w, // Responsive position
                  child: CustomContainer(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesCircularAvatar),
                    useCircleAvatar: true,
                    color: Color(0xFFFABB11),
                    height: 42.h, // Responsive height
                    width: 42.w, // Responsive width
                  ),
                ),
                Positioned(
                  bottom: 40.h, // Responsive position
                  left: 142.w, // Responsive position
                  child: CustomContainer(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesCircularAvatar),
                    useCircleAvatar: true,
                    color: Color(0xFFFABB11),
                    height: 52.h, // Responsive height
                    width: 52.w, // Responsive width
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  child: CustomContainer(
                    color: Color(0xFFFABB11),
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
                Positioned(
                  top: 360,
                  left: 80,
                  child: CustomContainer(),
                ),
                Positioned(
                  bottom: 0,
                  left: 70,
                  child: CustomContainer(
                    height: 42.h,
                    width: 42.w,
                    color: Color(0xFFFABB11),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 80,
                  child: CustomContainer(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesCircularAvatar),
                    useCircleAvatar: true,
                    height: 48.h,
                    width: 48.w,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 230,
                  bottom: 400,
                  child: CustomContainer(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesCircularAvatar),
                    useCircleAvatar: true,
                    height: 68.h,
                    width: 68.w,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 50,
                  child: CustomContainer(
                    color: Color(0xFFFABB11),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 212,
                  child: CustomContainer(
                    height: 8.h,
                    width: 8.w,
                    color: AppColors.secondary,
                  ),
                ),
                Positioned(
                  bottom: 120.h,
                  right: 0,
                  child: CustomContainer(
                    backgroundImage:
                        AssetImage(Assets.assetsImagesCircularAvatar),
                    useCircleAvatar: true,
                    height: 68.h,
                    width: 68.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(onTap: () {}, title: "Next")
          ],
        ),
      ),
    );
  }
}
