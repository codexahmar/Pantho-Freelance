import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_button.dart';
import 'package:pantho/widgets/donation_card.dart';

class Donation extends StatefulWidget {
  const Donation({super.key});

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(400),
        child: AppBar(
          title: Text(
            AppTexts.donationType,
            style: robotoMediumStyle.copyWith(
              fontSize: 24.sp,
              color: AppColors.white,
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
              color: AppColors.white,
              Assets.assetsIconsMenuLeft,
              scale: 4,
            ),
            SizedBox(
              width: 17.w,
            ),
          ],
          flexibleSpace: Container(
            height: 384,
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90),
              ),
            ),
            child: ClipRRect(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Image.asset(
                  scale: 4,
                  Assets.assetsImagesDonation,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DonationCard(
                        title: "Blood",
                        description:
                            "Do you want to make\n your contact number\n visible for other",
                        imageAsset: Assets.assetsIconsDrop,
                      ),
                      DonationCard(
                        title: "Powder Red",
                        description:
                            "Do you want to make\n your contact number\n visible for other",
                        imageAsset: Assets.assetsIconsDrop,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DonationCard(
                        title: "Platelets",
                        description:
                            "Do you want to make\n your contact number\n visible for other",
                        imageAsset: Assets.assetsIconsDrop,
                      ),
                      DonationCard(
                        title: "AB Plasma",
                        description:
                            "Do you want to make\n your contact number\n visible for other",
                        imageAsset: Assets.assetsIconsDrop,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(onTap: () {}, title: "Next"),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
