import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_fonts.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  const AppTextStyles._();
  // heading
  static const TextStyle font16Bold = TextStyle(
    fontSize: 16,
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold,
  );

  static const font20Regular = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeightHelper.regular,
    fontSize: 20,
  );

  static const font20SemiBold = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 20,
  );

  static const TextStyle font16SemiBold = TextStyle(
    fontSize: 16,
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeightHelper.semiBold,
  );

  static const font24Regular = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeightHelper.regular,
    fontSize: 24,
  );

  static const font36Medium = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeightHelper.medium,
    fontSize: 36,
  );

  // body xs
  static const font16Regular = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
  );
  static const font12Regular = TextStyle(
    fontFamily: AppFonts.poppins,
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );

  static const font24juaRegular = TextStyle(
    fontFamily: AppFonts.jua,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 24,
  );

  static const font18juaRegular = TextStyle(
    fontFamily: AppFonts.jua,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 18,
  );
  static const font20juaRegular = TextStyle(
    fontFamily: AppFonts.jua,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 20,
  );
}
