import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_colors.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';

class CustomButtonLarge extends StatelessWidget {
  const CustomButtonLarge(
      {super.key,
      required this.text,
      // required this.color,
      required this.textColor,
      required this.function,
      this.hight = 40,
      this.color = AppColors.primaryColor,
      this.icon});
  final String text;
  final Color color;
  final Color textColor;
  final Function() function;
  final Icon? icon;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: hight,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: color,
          color: color,
          border: Border.all(color: color),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
            child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.labelLarge,
            children: [
              TextSpan(
                  text: text,
                  style: AppTextStyles.font16SemiBold
                      .copyWith(color: AppColors.white)
                  // const TextStyle(
                  //   fontFamily: ,
                  //   overflow: TextOverflow.ellipsis)

                  ),
              WidgetSpan(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: icon,
              )),
            ],
          ),
        )),
      ),
    );
  }
}
