import 'package:flutter/material.dart';
import 'package:trendco_app/core/assets/assets.dart';
import 'package:trendco_app/core/theme/app_colors.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';
import 'package:trendco_app/core/widgets/custom_svgImage.dart';
import 'package:trendco_app/core/widgets/image_widget.dart';

class CustomItemCategoryHome extends StatelessWidget {
  const CustomItemCategoryHome(
      {super.key,
      required this.title,
      required this.imageAssetPath,
      required this.description,
      required this.function});
  final String title;
  final String imageAssetPath;
  final String description;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ImageWidget(
                image: imageAssetPath,
                width: 200,
                height: 200,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: AppTextStyles.font24Extrabold,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: AppTextStyles.font16Regular,
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: function,
            child: Row(
              children: [
                Text(
                  'More Info',
                  style: AppTextStyles.font14Bold.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(width: 20),
                CustomSvgimage(
                  hight: 20,
                  path: AssetsData.vectorImage,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
