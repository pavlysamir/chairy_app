import 'package:flutter/material.dart';
import 'package:trendco_app/core/widgets/custom_app_bar.dart';

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

              // Add more content here
            ],
          ),
        ));
  }
}
