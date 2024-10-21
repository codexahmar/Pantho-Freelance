import 'package:flutter/material.dart';
import 'package:pantho/theme/app_colors.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetImage;
  final Color? imageColor;
  final double imageHeight;

  const InfoTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.assetImage,
    this.imageColor,
    this.imageHeight = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 359,
      height: 73,
      decoration: BoxDecoration(color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Image.asset(
              assetImage,
              scale: 1,
              height: imageHeight, // Use the new parameter for height
              color: imageColor,
            ),
            const SizedBox(width: 20),
            const VerticalDivider(
              width: 1,
              indent: 18,
              endIndent: 18,
              thickness: 1,
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[600], // Replace with AppColors.greyB
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
