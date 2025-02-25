import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trendco_app/generated/locale_keys.g.dart';

class TrendcoApp extends StatelessWidget {
  const TrendcoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(context.locale.languageCode),
              Text(LocaleKeys.hello_world.tr())
            ],
          ),
        ),
      ),
    );
  }
}
