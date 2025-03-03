import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trendco_app/core/assets/assets.dart';
import 'package:trendco_app/core/routing/navigation_services.dart';
import 'package:trendco_app/core/routing/routes.dart';
import 'package:trendco_app/core/widgets/custom_app_bar.dart';
import 'package:trendco_app/features/home/presentation/widgets/custom_header_image.dart';
import 'package:trendco_app/features/home/presentation/widgets/custom_item_category_home.dart';
import 'package:trendco_app/generated/locale_keys.g.dart';

import '../widgets/intro_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar:
            true, // This makes the body extend behind the app bar
        appBar: CustomAppBar(
          isTransparent: true, // Make app bar transparent
          onSearchPressed: () {
            // Handle search action
          },
          onMenuPressed: () {
            // Handle menu action
            NavigationService().navigateTo(Routes.menuScreen);
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Add your app content here
              IntroHomeWidget(),
              const SizedBox(height: 20),
              CustomHeaderImage(
                title: 'Our\n${LocaleKeys.categories.tr()}',
                imageAssetPath: AssetsData.drowRightImage,
                alignment: Alignment.centerRight,
              ),
              const SizedBox(height: 20),
              CustomItemCategoryHome(
                title: 'Living Room',
                imageAssetPath: AssetsData.livingRoomImage,
                description:
                    'Sofas, loveseats, armchairs, coffee tables, end tables, entertainment centers, bookshelves.',
                function: () {},
              ),
              const SizedBox(height: 20),
              CustomItemCategoryHome(
                title: 'Bedroom',
                imageAssetPath: AssetsData.livingRoomImage,
                description:
                    'Beds, nightstands, dressers, chests of drawers, wardrobes, vanities.',
                function: () {},
              ),
              const SizedBox(height: 20),
              CustomItemCategoryHome(
                title: 'Kitchen',
                imageAssetPath: AssetsData.livingRoomImage,
                description:
                    'Kitchen cabinets, kitchen islands, dining tables, chairs.',
                function: () {},
              ),
              const SizedBox(height: 20),
              CustomHeaderImage(
                title: '',
                imageAssetPath: AssetsData.drowLeftImage,
                alignment: Alignment.centerLeft,
              ),
              CustomItemCategoryHome(
                title: 'Furnish Your Dreams, Choose Wisely',
                imageAssetPath: AssetsData.livingRoomImage,
                description:
                    'Discover quality furniture, curated styles, and exceptional service at Our Store. We make furnishing your home easy and enjoyable.',
                function: () {},
              ),
              CustomHeaderImage(
                title: '',
                imageAssetPath: AssetsData.drowRight2Image,
                alignment: Alignment.centerRight,
              ),
              // Add more content here
            ],
          ),
        ));
  }
}
