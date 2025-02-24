import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_colors.dart';

class CustomColors {
  const CustomColors._({required this.secondaryColor});
  final Color secondaryColor;

  factory CustomColors._light() {
    return const CustomColors._(secondaryColor: AppColors.grey400);
  }

  factory CustomColors._dark() {
    return const CustomColors._(secondaryColor: AppColors.grey300);
  }
}

extension CustomColorsExtension on ThemeData {
  CustomColors get customColors {
    if (brightness == Brightness.dark) return CustomColors._dark();
    return CustomColors._light();
  }
}
