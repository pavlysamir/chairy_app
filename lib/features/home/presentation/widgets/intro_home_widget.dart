import 'package:flutter/material.dart';
import 'package:trendco_app/core/assets/assets.dart';
import 'package:trendco_app/core/extensions/mediaQuery_extensions.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';

class IntroHomeWidget extends StatelessWidget {
  const IntroHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Background Image
        Container(
          width: 430,
          height: context.hightMediaQuery - 56,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.homeIntroImage),
              fit: BoxFit.fill,
            ),
          ),
        ),

        // Content overlay
        Positioned(
          bottom: 300,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20), // Add some space below app bar
                  const Text(
                    textAlign: TextAlign.center,
                    'Make Your Interior\nMore Minimalistic\n& Modern',
                    style: AppTextStyles.font24ExtraboldWhite,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                      textAlign: TextAlign.center,
                      'Turn your room with panto into a lot\nmore minimalist and modern with ease\nand speed',
                      style: AppTextStyles.font16SemiBold),

                  // Add more content here
                ],
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 250,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.8),
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.14, 0.5]),
          ),
        ),
      ],
    );
  }
}
