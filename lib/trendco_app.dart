import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendco_app/core/routing/app_router.dart';
import 'package:trendco_app/core/routing/navigation_services.dart';
import 'package:trendco_app/core/theme/cubit/theme_cubit.dart';
import 'package:trendco_app/core/theme/theme_data/them_data_dark.dart';
import 'package:trendco_app/core/theme/theme_data/theme_data_light.dart';
import 'package:trendco_app/features/home/presentation/logic/cubit/home_cubit.dart';

class TrendcoApp extends StatelessWidget {
  final NavigationService _navigationService = NavigationService();

  TrendcoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (_) => HomeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, newMode) {
          return ScreenUtilInit(
              designSize: const Size(430, 945),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: getLightTheme(),
                darkTheme: getDarkTheme(),
                themeMode: newMode,
                navigatorKey: _navigationService.navigatorKey,
                onGenerateRoute: AppRouter.generateRoute,
                initialRoute: AppRouter.initialRoute,
              ));
        },
      ),
    );
  }
}
