import 'package:flutter/material.dart';
import 'package:pantho/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        color: AppColors.background,
      ));
}
