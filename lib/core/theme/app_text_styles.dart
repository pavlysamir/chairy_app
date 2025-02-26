import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_fonts.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  const AppTextStyles._();
  // heading

  static const TextStyle font32ExtraBold = TextStyle(
    fontSize: 32,
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.extraBold,
  );

  static const TextStyle font42ExtraBold = TextStyle(
    fontSize: 42,
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.extraBold,
  );

  static const TextStyle font16Bold = TextStyle(
    fontSize: 16,
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeight.bold,
  );

  static const font20Regular = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.regular,
    fontSize: 20,
  );

  static const font28Regular = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.regular,
    fontSize: 28,
  );
  static const font20SemiBold = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 20,
  );

  static const TextStyle font16SemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.semiBold,
  );

  static const font24Extrabold = TextStyle(
    color: Colors.white,
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.extraBold,
    fontSize: 24,
  );

  static const font36Medium = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontWeight: FontWeightHelper.medium,
    fontSize: 36,
  );

  // body xs
  static const font16Regular = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
  );
  static const font12Regular = TextStyle(
    fontFamily: AppFonts.gilroy,
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
  );

  static const font24gilroyRegular = TextStyle(
    fontFamily: AppFonts.gilroy,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 24,
  );

  static const font18gilroyRegular = TextStyle(
    fontFamily: AppFonts.gilroy,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 18,
  );
  static const font20gilroyRegular = TextStyle(
    fontFamily: AppFonts.gilroy,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
    fontSize: 20,
  );
}
