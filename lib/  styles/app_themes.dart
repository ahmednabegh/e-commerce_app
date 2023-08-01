import 'package:e_commerce_app/%20%20styles/app_colors.dart';
import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.WhiteColor,
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 18,
        color: AppColors.blackColor.withOpacity(0.7),
        fontWeight: FontWeight.w300
      ),
      titleMedium: const TextStyle(
        fontSize: 24,
        color: AppColors.WhiteColor,
        fontWeight: FontWeight.w600
      ),
      titleLarge: const TextStyle(
        fontSize: 16,
        color: AppColors.WhiteColor,
        fontWeight: FontWeight.w300
      ),
      bodySmall:  const TextStyle(
        fontSize: 16,
        color: AppColors.WhiteColor,
        fontWeight: FontWeight.w400,

      ),
      bodyLarge:
      const TextStyle(
        fontSize: 18,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w600,

      ),
    )
  );
}