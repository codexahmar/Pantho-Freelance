import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/blood_grp_container.dart';
import 'package:pantho/widgets/custom_infoTile.dart';
import '../constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectBloodGroup extends StatefulWidget {
  const SelectBloodGroup({super.key});

  @override
  State<SelectBloodGroup> createState() => _SelectBloodGroupState();
}

class _SelectBloodGroupState extends State<SelectBloodGroup> {
  bool _showCompleteOther = false;

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.selectBloodGroup,
          style: robotoMediumStyle.copyWith(
            fontSize: 24.sp,
            color: Color(0xFF464A57),
          ),
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
            width: 17.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      BloodGroupContainer(bloodGroup: "AB+"),
                      BloodGroupContainer(bloodGroup: "A+"),
                      BloodGroupContainer(bloodGroup: "A-"),
                      BloodGroupContainer(bloodGroup: "B+"),
                      BloodGroupContainer(bloodGroup: "B-"),
                      BloodGroupContainer(bloodGroup: "O+"),
                      BloodGroupContainer(bloodGroup: "O-"),
                      BloodGroupContainer(bloodGroup: "AB-"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(-2.w, 3.h),
                  ),
                ],
              ),
              child: InfoTile(
                  title: "Unit Of Blood",
                  subtitle: "~525 mL",
                  assetImage: Assets.assetsIconsPinkDrop),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 360,
              height: 50.h,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(8.w),
              ),
              child: Center(
                child: Text("Emergency",
                    style: robotoMediumStyle.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.white,
                    )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text("OR",
                style: robotoMediumStyle.copyWith(
                  fontSize: 13.sp, // Use ScreenUtil for responsive font size
                  color: AppColors.dark,
                )),
            SizedBox(
              height: 30.h, // Use ScreenUtil for responsive height
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Schedule",
                    style: robotoMediumStyle.copyWith(
                      fontSize:
                          13.sp, // Use ScreenUtil for responsive font size
                      color: AppColors.dark,
                    )),
                SizedBox(
                  width: 30.w, // Use ScreenUtil for responsive width
                ),
                Container(
                  width: 65.w, // Use ScreenUtil for responsive width
                  height: 65.h, // Use ScreenUtil for responsive height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.button.withOpacity(0.3),
                  ),
                  child: Center(
                    child: Icon(Icons.calendar_today, color: AppColors.button),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h, // Use ScreenUtil for responsive height
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 83.w, // Use ScreenUtil for responsive width
                  height: 37.h, // Use ScreenUtil for responsive height
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    borderRadius: BorderRadius.circular(
                        20.w), // Use ScreenUtil for responsive radius
                  ),
                  child: Center(
                    child: Text("Me",
                        style: robotoMediumStyle.copyWith(
                          fontSize: 13.sp,
                          color: AppColors.white,
                        )),
                  ),
                ),
                SizedBox(width: 20.w), // Use ScreenUtil for responsive width
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showCompleteOther =
                          !_showCompleteOther; // Toggle the state
                    });
                  },
                  child: Container(
                    width: 83.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                      color: AppColors.button,
                      borderRadius: BorderRadius.circular(20.w),
                    ),
                    child: Center(
                      child: Text("Other",
                          style: robotoMediumStyle.copyWith(
                            fontSize: 13.sp,
                            color: AppColors.white,
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                // Only show the complete text if _showCompleteOther is true
                if (_showCompleteOther)
                  Column(
                    children: [
                      Text("type.. ex A positive (A+)"),
                      // You can add more widgets here if needed
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
