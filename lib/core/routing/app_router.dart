import 'package:flutter/material.dart';
import 'package:trendco_app/core/Layouts/home_layout.dart';
import 'package:trendco_app/core/routing/routes.dart';
import 'package:trendco_app/core/server_locator/service_locator.dart';
import 'package:trendco_app/core/shared_preferences/shared_preferences.dart';
import 'package:trendco_app/features/home/presentation/views/menu_screen.dart';

class AppRouter {
  static String initialRoute =
      getIt.get<CashHelperSharedPreferences>().getData(key: 'onBoarding') ==
              true
          ? Routes.home
          : Routes.home;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeLayout(),
          settings: settings,
        );

      case Routes.menuScreen:
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
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
