import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_colors.dart';
import 'package:trendco_app/core/theme/app_fonts.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.grey900,
    brightness: Brightness.dark,
    fontFamily: AppFonts.gilroy,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      // Headline styles
      headlineLarge:
          AppTextStyles.font32ExtraBold.copyWith(color: AppColors.white),
      headlineMedium:
          AppTextStyles.font28Regular.copyWith(color: AppColors.white),
      headlineSmall:
          AppTextStyles.font28Regular.copyWith(color: AppColors.white),

      // // Title styles
      // titleLarge: AppTextStyles.font20Bold.copyWith(color: AppColors.white),
      // titleMedium: AppTextStyles.font16Bold.copyWith(color: AppColors.white),
      // titleSmall: AppTextStyles.font14Bold.copyWith(color: AppColors.white),

      // // Body styles
      // bodyLarge: AppTextStyles.font16Regular.copyWith(color: AppColors.white),
      // bodyMedium: AppTextStyles.font14Regular.copyWith(color: AppColors.white),
      // bodySmall: AppTextStyles.font12Regular.copyWith(color: AppColors.white),

      // // Display styles
      // displayLarge: AppTextStyles.font32Bold.copyWith(color: AppColors.white),
      // displayMedium: AppTextStyles.font28Regular.copyWith(color: AppColors.white),
      // displaySmall: AppTextStyles.font24Regular.copyWith(color: AppColors.white),

      // // Label styles
      // labelLarge: AppTextStyles.font14Medium.copyWith(color: AppColors.white),
      // labelMedium: AppTextStyles.font12Medium.copyWith(color: AppColors.white),
      // labelSmall: AppTextStyles.font10Medium.copyWith(color: AppColors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey800,
        disabledForegroundColor: AppColors.grey400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.font16SemiBold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.darkFillColor;
        }
        return AppColors.grey800;
      }),
      filled: true,
      hintStyle: AppTextStyles.font16Regular.copyWith(color: AppColors.grey400),
    ),
  );
}
