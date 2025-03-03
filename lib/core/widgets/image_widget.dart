import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendco_app/core/assets/assets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.width,
    this.height,
  });
  final String image;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      placeholder: (context, url) => Image(
        image: const AssetImage(AssetsData.homeIntroImage),
        height: height ?? 50,
        fit: BoxFit.contain,
        width: width ?? 50,
      ),
      errorWidget: (context, url, error) => Image(
        image: const AssetImage(AssetsData.homeIntroImage),
        height: height,
        fit: BoxFit.contain,
        width: width,
      ),
      height: height,
      fit: BoxFit.cover,
      width: width,
    );
  }
}
