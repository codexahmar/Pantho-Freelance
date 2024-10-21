import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/theme/app_colors.dart';
import 'package:pantho/widgets/custom_text.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 340.w,
      child: Row(
        children: [
          Container(
            width: 100.w,
            color: AppColors.secondary,
            child: Column(
              children: [
                SizedBox(height: 50.h),
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,
                      size: 30.sp, color: AppColors.secondary),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView(
                    children: [
                      _buildIcon(0, Assets.assetsIconsPinkDrop),
                      _buildIcon(1, Assets.assetsIconsInfo),
                      _buildIcon(2, Assets.assetsIconNotifications),
                      _buildIcon(3, Assets.assetsIconsClipboard),
                      _buildIcon(4, Assets.assetsIconsBook),
                      _buildIcon(5, Assets.assetsIconsFile),
                      _buildIcon(6, Assets.assetsIconsSettings),
                    ],
                  ),
                ),
                _buildIcon(-1, Assets.assetsIconsLogout), // Logout icon
                SizedBox(height: 20.h),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Maren Lubin",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColors.greyA,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        text: "Edit Details",
                        fontSize: 14.sp,
                        color: AppColors.greyA,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView(
                    children: [
                      _buildTextItem(
                        "Search Donator",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "About Donation",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "Notification",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "Select Blood Group",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "Guidelines for Donation",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "Donation Type",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                      _buildTextItem(
                        "Setting",
                        Assets.assetsIconsArrowLeft,
                      ), // Added icon
                    ],
                  ),
                ),
                _buildTextItem("Logout", null),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(int index, String asset) {
    bool isSelected =
        _selectedIndex == index && index != -1; // Updated condition
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Container(
        width: 69.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : AppColors.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        child: Center(
          child: Image.asset(
            asset,
            scale: asset == Assets.assetsIconNotifications ||
                    asset == Assets.assetsIconsSettings
                ? 1
                : 3,
            color: isSelected ? AppColors.secondary : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildTextItem(String text, String? iconAsset) {
    // Updated method signature
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            // Changed to Row to accommodate icon
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: text,
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                color: AppColors.dark,
              ),
              if (iconAsset != null) // Conditionally display icon
                Padding(
                  padding: const EdgeInsets.only(left: 8.0), // Add some spacing
                  child: Image.asset(
                    iconAsset,
                    scale: 2,
                  ), // Adjust size as needed
                ),
            ],
          ),
        ),
      ),
    );
  }
}
