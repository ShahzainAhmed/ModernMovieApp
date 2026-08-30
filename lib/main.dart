import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/routes/app_pages.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Modern Movie App',
        getPages: AppPages.allPages,
        theme: ThemeData(
          bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: AppColors.kTransparentColor),
        ),
        initialRoute: AppRoutes.onboardingScreen,
      ),
    );
  }
}
