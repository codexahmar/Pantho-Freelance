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
            fontSize: 20.sp, // Reduced font size
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
          SizedBox(width: 10.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Donor image with reduced size
              SizedBox(
                height: 150.h, // Limit image height
                width: double.infinity,
                child: Image.asset(
                  Assets.assetsImagesDonor,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 10.h),
              InfoTile(
                title: "Name",
                subtitle: "Ahmad Dias",
                assetImage: Assets.assetsIconsProfileIcon,
                imageColor: AppColors.primary,
                imageHeight: 18.h,
              ),
              SizedBox(height: 10.h),
              InfoTile(
                title: "Email",
                subtitle: "demo@gmail.com",
                assetImage: Assets.assetsIconsMail,
                imageHeight: 13.h,
              ),
              SizedBox(height: 15.h),
              Text(
                "Select Blood Group",
                style: robotoMediumStyle.copyWith(
                  fontSize: 20.sp,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h),
              GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.w,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1.1, 
                children: [
                  BloodGroupContainer(bloodGroup: "AB+"),
                  BloodGroupContainer(bloodGroup: "A+"),
                  BloodGroupContainer(bloodGroup: "A-"),
                  BloodGroupContainer(bloodGroup: "B+"),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 14.w,
                    height: 14.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF00C94A)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      Assets.assetsIconsCheck,
                      scale: 3,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Flexible(
                    child: Text(
                      "Do you want to make your contact number visible for other",
                      style: robotoMediumStyle.copyWith(
                        fontSize: 11.sp,
                        color: AppColors.dark,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomButton(onTap: () {}, title: "Submit"),
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  "Read more who can give blood",
                  style: robotoMediumStyle.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
