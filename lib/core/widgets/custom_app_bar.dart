import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trendco_app/core/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onMenuPressed;
  final VoidCallback? onSearchPressed;
  final Color backgroundColor;
  final bool isTransparent;

  const CustomAppBar({
    super.key,
    this.title = 'LOGO',
    this.onMenuPressed,
    this.onSearchPressed,
    this.backgroundColor = const Color(0xFF003744),
    this.isTransparent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: isTransparent ? Colors.transparent : backgroundColor,
      child: SafeArea(
        child: SizedBox(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: AppTextStyles.font28Regular.copyWith(
                      color: isTransparent ? Colors.white : Colors.black)),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(IconlyLight.search, color: Colors.amber),
                    onPressed: onSearchPressed ?? () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.amber),
                    onPressed: onMenuPressed ?? () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
