import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/resources/app_themes.dart';
import 'package:modern_movie_app/routes/app_pages.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

void main() {
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
        title: 'Flutter Demo',
        getPages: AppPages.allPages,
        theme: Themes.primaryTheme,
        initialRoute: AppRoutes.onboardingScreen,
      ),
    );
  }
}
