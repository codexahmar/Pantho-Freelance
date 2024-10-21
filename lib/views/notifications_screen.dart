import 'package:flutter/material.dart';
import 'package:pantho/constants/app_styles.dart';
import 'package:pantho/constants/app_texts.dart';
import 'package:pantho/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pantho/widgets/notification_item.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.notification,
          style: robotoMediumStyle.copyWith(
            fontSize: 24.sp,
            color: Color(0xFF464A57),
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
            width: 17.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            // Calculate the opacity based on the index
            double opacity = index < 5
                ? 1.0
                : (10 - index) / 5; // Fade out after the 5th item
            return Opacity(
              opacity: opacity,
              child: Column(
                children: [
                  NotificationItem(
                    message:
                        "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                    time: "${index + 1} min",
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
