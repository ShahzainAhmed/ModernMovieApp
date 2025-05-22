import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:modern_movie_app/modules/home/home_screen.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.home_outlined, color: AppColors.kWhiteColor),
            activeForegroundColor: AppColors.kBlackColor,
            inactiveForegroundColor: AppColors.kWhiteColor,
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon:
                const Icon(CupertinoIcons.ticket, color: AppColors.kWhiteColor),
            activeForegroundColor: AppColors.kBlackColor,
            inactiveForegroundColor: AppColors.kWhiteColor,
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(Icons.shopping_cart_outlined,
                color: AppColors.kWhiteColor),
            activeForegroundColor: AppColors.kBlackColor,
            inactiveForegroundColor: AppColors.kWhiteColor,
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const Icon(
              Icons.person_outline_sharp,
              color: AppColors.kWhiteColor,
            ),
            activeForegroundColor: AppColors.kBlackColor,
            inactiveForegroundColor: AppColors.kWhiteColor,
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarDecoration: NavBarDecoration(color: AppColors.kGradient2),
        navBarConfig: navBarConfig,
      ),
    );
  }
}
