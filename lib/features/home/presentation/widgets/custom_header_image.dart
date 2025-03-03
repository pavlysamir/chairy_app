import 'package:flutter/material.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';
import 'package:trendco_app/core/widgets/custom_svgImage.dart';

class CustomHeaderImage extends StatelessWidget {
  const CustomHeaderImage(
      {super.key,
      required this.title,
      required this.imageAssetPath,
      required this.alignment});

  final String title;
  final String imageAssetPath;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: alignment, child: CustomSvgimage(path: imageAssetPath)),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: AppTextStyles.font32ExtraBold,
          ),
        ),
      ],
    );
  }
}
