import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendco_app/core/assets/assets.dart';
import 'package:trendco_app/core/routing/navigation_services.dart';
import 'package:trendco_app/core/routing/routes.dart';
import 'package:trendco_app/core/theme/app_colors.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';
import 'package:trendco_app/core/widgets/custom_svgImage.dart';
import 'package:trendco_app/generated/locale_keys.g.dart';

import '../logic/cubit/home_cubit.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final HomeCubit _homeCubit = HomeCubit();

  @override
  void dispose() {
    _homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isAr;

    context.locale.toString() == 'ar' ? isAr = true : isAr = false;
    return BlocProvider.value(
      value: HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is ChangeLanguage) {
            isAr = state.isAr;
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Text('LOGO', style: AppTextStyles.font28Regular),
                actions: [
                  IconButton(
                    icon: Icon(Icons.close, color: AppColors.primaryColor),
                    onPressed: () {
                      NavigationService().navigateToReplacement(Routes.home);
                    },
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      LocaleKeys.menu.tr(),
                      style: AppTextStyles.font24Extrabold,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      LocaleKeys.language.tr(),
                      style: AppTextStyles.font20Regular,
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () async {
                        // Change language to Arabic
                        await context.setLocale(Locale('ar'));
                        context.read<HomeCubit>().changeLanguage(true);
                      },
                      child: Row(
                        children: [
                          isAr == true
                              ? Icon(Icons.check, color: AppColors.primaryColor)
                              : const SizedBox(
                                  width: 25,
                                ),
                          CustomSvgimage(
                            path: AssetsData.egyptIcon,
                            hight: 25,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Ar',
                            style: AppTextStyles.font20Regular,
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: () async {
                        // Change language to English
                        await context.setLocale(Locale('en'));

                        context.read<HomeCubit>().changeLanguage(true);
                      },
                      child: Row(
                        children: [
                          isAr == false
                              ? Icon(Icons.check, color: AppColors.primaryColor)
                              : const SizedBox(
                                  width: 25,
                                ),
                          CustomSvgimage(
                            path: AssetsData.amercaIcon,
                            hight: 25,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'En',
                            style: AppTextStyles.font20Regular,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
