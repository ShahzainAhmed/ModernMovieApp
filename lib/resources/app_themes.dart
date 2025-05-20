import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class Themes {
  static ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      color: AppColors.kWhiteColor,
      scrolledUnderElevation: 0.0,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: AppColors.kWhiteColor,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemStatusBarContrastEnforced: true,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarColor: Colors.transparent,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);
