import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

AppBar mainAppBar(context, {String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    toolbarHeight: 67.h,
    elevation: 0.0,
    automaticallyImplyLeading: true,
    // title: const CustomTitleAppBar(),
    actions: [
      const SizedBox(width: 10),
      IconButton(
        icon: const Icon(
          IconlyLight.search,
          size: 24,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          IconlyLight.activity,
          size: 24,
        ),
        onPressed: () {},
      ),
    ],
  );
}

// AppBar subAppBar(context, {String? title, bool isSearch = false}) {
//   return AppBar(
//     backgroundColor: AppColors.white,
//     toolbarHeight: 80,
//     elevation: 0.0,
//     automaticallyImplyLeading: true,
//     forceMaterialTransparency: true,
//     leading: IconButton(
//       onPressed: () {
//         Navigator.pop(context);
//       },
//       icon: const Icon(
//         Icons.arrow_back_ios_new_rounded,
//       ),
//       color: AppColors.primaryYellow,
//     ),
//     title: title != null
//         ? Text(
//             title,
//             style: AppTextStyles.font20Regular,
//           )
//         : null,
//     actions: [
//       isSearch
//           ? IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.search),
//               color: AppColors.grey600,
//               iconSize: 30,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//             )
//           : const SizedBox(),
//     ],
//   );
//}
