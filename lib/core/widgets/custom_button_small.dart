import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendco_app/core/theme/app_colors.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';

class CustomButtonSmall extends StatelessWidget {
  const CustomButtonSmall(
      {super.key,
      required this.function,
      required this.text,
      this.color = AppColors.primaryColor,
      this.textColortcolor = AppColors.white,
      this.width = 180,
      required this.borderColor,
      this.hight = 40,
      this.fontSize = 20});
  final Function() function;
  final String text;
  final Color color;
  final Color textColortcolor;
  final double width;
  final double hight;
  final double fontSize;

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        child: Container(
          height: hight.h,
          width: width.w,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text,
              style: AppTextStyles.font16SemiBold.copyWith(
                color: textColortcolor,
                fontSize: fontSize,
              ),
            ),
          ),
        ));
  }
}
