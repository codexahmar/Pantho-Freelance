import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/blood_grp_container.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/custom_infoTile.dart';
import '../constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BecomeDonor extends StatefulWidget {
  const BecomeDonor({super.key});

  @override
  State<BecomeDonor> createState() => _BecomeDonorState();
}

class _BecomeDonorState extends State<BecomeDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.becomeDonor,
          style: robotoMediumStyle.copyWith(
            fontSize: 24.sp,
            color: AppColors.dark,
            fontWeight: FontWeight.w400,
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
            width: 17.w, // Use ScreenUtil for responsive width
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.assetsImagesDonor),
              SizedBox(
                height: 20.h,
              ),
              InfoTile(
                title: "Name",
                subtitle: "Ahmad Dias",
                assetImage: Assets.assetsIconsProfileIcon,
                imageColor: AppColors.primary,
                imageHeight: 20.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              InfoTile(
                title: "Email",
                subtitle: "demo@gmail.com",
                assetImage: Assets.assetsIconsMail,
                imageHeight: 15.h,
              ),
              SizedBox(
                height: 28.h,
              ),
              Text(
                "Select Blood Group",
                style: robotoMediumStyle.copyWith(
                  fontSize: 24.sp, // Use ScreenUtil for responsive font size
                  color: AppColors.dark,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.h, // Use ScreenUtil for responsive height
              ),
              Column(
                children: [
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
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 16.w,
                          height: 16.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF00C94A)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            Assets.assetsIconsCheck,
                            scale: 3,
                          )),
                      SizedBox(
                          width: 10.w), // Use ScreenUtil for responsive width
                      Flexible(
                        child: Text(
                          "Do you want to make your contact number visible for other",
                          style: robotoMediumStyle.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.dark,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomButton(onTap: () {}, title: "Submit"),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Read more who can give blood",
                    style: robotoMediumStyle.copyWith(
                      fontSize:
                          14.sp, // Use ScreenUtil for responsive font size
                      color: AppColors.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
