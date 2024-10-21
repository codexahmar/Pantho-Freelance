import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantho/constants/assets.dart';
import 'package:pantho/routes/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(
        AppRoutes.onboarding,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Assets.assetsImagesSplashBg,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                Assets.assetsImagesLogo,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
