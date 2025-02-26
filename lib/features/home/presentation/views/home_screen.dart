import 'package:flutter/material.dart';
import 'package:trendco_app/core/assets/assets.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';
import 'package:trendco_app/core/widgets/custom_app_bar.dart';
import 'package:trendco_app/core/widgets/custom_svgImage.dart';

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
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Add your app content here
              IntroHomeWidget(),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: CustomSvgimage(path: AssetsData.drowRightImage)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Our\nCategories',
                      style: AppTextStyles.font32ExtraBold,
                    ),
                  ),
                ],
              )

              // Add more content here
            ],
          ),
        ));
  }
}
