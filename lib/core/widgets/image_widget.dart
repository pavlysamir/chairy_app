// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class ImageWidget extends StatelessWidget {
//   const ImageWidget({
//     Key? key,
//     required this.image,
//     this.width,
//     this.height,
//   }) : super(key: key);
//   final String image;
//   final double? width, height;

//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl: image,
//       placeholder: (context, url) => Image(
//         image: const AssetImage(AssetsData.yappyIcon),
//         height: height ?? 50,
//         fit: BoxFit.contain,
//         width: width ?? 50,
//       ),
//       errorWidget: (context, url, error) => Image(
//         image: const AssetImage(AssetsData.yappyIcon),
//         height: height,
//         fit: BoxFit.contain,
//         width: width,
//       ),
//       height: height,
//       fit: BoxFit.cover,
//       width: width,
//     );
//   }
// }
