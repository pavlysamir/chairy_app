// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomTitleAppBar extends StatelessWidget {
//   const CustomTitleAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CircleAvatar(
//           backgroundColor: Colors.transparent,
//           radius: 25.r,
//           child: ClipOval(
//             child: CachedNetworkImage(
//               // errorWidget: (context, url, error) {
//               //   return Image.network(kProfileImage);
//               // },
//               width: 100, // 2 * radius
//               height: 100, // 2 * radius
//               fit: BoxFit.fill,
//               imageUrl:
//                   'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1736820099~exp=1736823699~hmac=3607d67691b4cc4a356595d484bb25e4282d7e74b1b2dd539af397c79f1fd7eb&w=740',
//               placeholder: (context, url) => const Center(
//                 child: CircularProgressIndicator(
//                     color: AppColors.primaryRed, strokeWidth: 0.5),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(width: 12.w),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 context.loc.welcome,
//                 style: AppTextStyles.font12Regular
//                     .copyWith(color: AppColors.primaryRed),
//               ),
//               Text(
//                 'Peter',
//                 style: AppTextStyles.font20Regular.copyWith(
//                     fontFamily: AppFonts.jua, color: AppColors.primaryRed),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
