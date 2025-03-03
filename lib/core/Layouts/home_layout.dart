import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trendco_app/core/extensions/mediaQuery_extensions.dart';
import 'package:trendco_app/core/theme/app_colors.dart';

import '../../generated/locale_keys.g.dart';
import 'home_layout_cubit.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = HomeLayoutCubit.get(context);
          return Scaffold(
            bottomNavigationBar: BottomAppBar(
              clipBehavior: Clip.antiAlias,
              height: context.hightMediaQuery * 0.1,
              padding: EdgeInsets.zero,
              color: Colors.white,
              elevation: 0.0,
              shape: const CircularNotchedRectangle(),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: Colors.white,
                mouseCursor: MouseCursor.defer,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/home_icon.svg',
                      color: cubit.currentIndex == 0
                          ? AppColors.primaryColor
                          : Colors.grey,
                      height: 28,
                    ),
                    label: LocaleKeys.home.tr(),
                  ),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/category_icon.svg',
                        color: cubit.currentIndex == 1
                            ? AppColors.primaryColor
                            : Colors.grey,
                        height: 28,
                      ),
                      label: LocaleKeys.categories.tr()),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icons/cart_icon.svg',
                        color: cubit.currentIndex == 2
                            ? AppColors.primaryColor
                            : Colors.grey,
                        height: 28,
                      ),
                      label: LocaleKeys.cart.tr()),
                ],
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeBottomNavBar(index);
                },
              ),
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
