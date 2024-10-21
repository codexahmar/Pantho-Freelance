import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/theme/app_colors.dart';

class AllDonor extends StatefulWidget {
  const AllDonor({super.key});

  @override
  State<AllDonor> createState() => _AllDonorState();
}

class _AllDonorState extends State<AllDonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.donators,
          style: robotoMediumStyle.copyWith(
            fontSize: 24.sp, // Responsive font size
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
            width: 17.w, // Responsive width
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Container(
              height: 156.h, // Responsive height
              width: 107.w, // Responsive width
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondary),
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.r), // Responsive radius
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.assetsImagesPinkDrop,
                          scale: 3,
                        ),
                        SizedBox(height: 8.h), // Responsive spacing
                        Text(
                          "A Positive", // Updated text
                          style: robotoMediumStyle.copyWith(
                            fontSize: 14.sp, // Responsive font size
                            color: AppColors.dark,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 4.h), // Responsive spacing
                        Text(
                          "(B+)", // New line added
                          style: robotoMediumStyle.copyWith(
                            fontSize: 14.sp, // Responsive font size
                            color: AppColors.dark,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 33.h, // Responsive position
                    left: 50.w, // Responsive position
                    child: Container(
                      height: 32.h, // Responsive height
                      width: 32.w, // Responsive width
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(32.r), // Responsive radius
                        color: AppColors.dark,
                      ),
                      child: Center(
                        child: Text(
                          "B+",
                          style: robotoMediumStyle.copyWith(
                            fontSize: 13.sp, // Responsive font size
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h), // Responsive spacing
            Text(
              "Your 25 request available ! ",
              style: robotoMediumStyle.copyWith(
                fontSize: 13.sp, // Responsive font size
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20.h), // Responsive spacing
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Number of items to display
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Container(
                          width: 354.w, // Responsive width
                          height: 90.h, // Responsive height
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(
                                12.r), // Responsive radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, // Responsive padding
                                vertical: 8.h), // Responsive padding
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 25.r, // Responsive radius
                                  backgroundImage: AssetImage(
                                      Assets.assetsImagesCircularAvatar),
                                ),
                                SizedBox(width: 10.w), // Responsive spacing
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Justin Bieber", // You can customize this based on index
                                        style: robotoRegularStyle.copyWith(
                                          fontSize:
                                              14.sp, // Responsive font size
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.dark,
                                        ),
                                      ),
                                      SizedBox(
                                          height: 5.h), // Responsive spacing
                                      Row(
                                        children: [
                                          Image.asset(
                                            Assets.assetsIconsLocation,
                                            scale: 2,
                                          ),
                                          SizedBox(
                                              width: 5.w), // Responsive spacing
                                          Text(
                                            "San Francisco, CA", // Customize as needed
                                            style: robotoRegularStyle.copyWith(
                                              fontSize:
                                                  10.sp, // Responsive font size
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.dark,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 39.w, // Responsive width
                                  height: 29.h, // Responsive height
                                  decoration: BoxDecoration(
                                    color: Color(0xFF826DEE),
                                    borderRadius: BorderRadius.circular(
                                        7.r), // Responsive radius
                                  ),
                                  child: Center(
                                    child: Text(
                                      "50 km", // Customize as needed
                                      style: robotoRegularStyle.copyWith(
                                        fontSize: 10.sp, // Responsive font size
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h), // Responsive spacing
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
