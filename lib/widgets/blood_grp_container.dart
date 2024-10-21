import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/theme/app_colors.dart';

class BloodGroupContainer extends StatelessWidget {
  final String bloodGroup;

  const BloodGroupContainer({Key? key, required this.bloodGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondary, width: 1),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  Assets.assetsImagesDrop,
                  scale: 5,
                ),
                const SizedBox(height: 8),
                Text(
                  bloodGroup,
                  style: robotoMediumStyle.copyWith(
                    fontSize: 12,
                    color: AppColors.dark,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 13,
            left: 40,
            child: Container(
              height: 22,
              width: 27,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF464A57),
              ),
              child: Center(
                child: Text(
                  bloodGroup,
                  style: robotoMediumStyle.copyWith(
                    fontSize: 8,
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
