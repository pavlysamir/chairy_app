import 'package:flutter/material.dart';
import 'package:trendco_app/core/routing/routes.dart';
import 'package:trendco_app/core/server_locator/service_locator.dart';
import 'package:trendco_app/core/shared_preferences/shared_preferences.dart';
import 'package:trendco_app/trendco_app.dart';

class AppRouter {
  static String initialRoute =
      getIt.get<CashHelperSharedPreferences>().getData(key: 'onBoarding') ==
              true
          ? Routes.onBoardingScreen
          : Routes.onBoardingScreen;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const TrendcoApp(),
          settings: settings,
        );

      // Add more routes as needed

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
