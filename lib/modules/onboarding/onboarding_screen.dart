import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/modules/components/primary_button.dart';
import 'package:modern_movie_app/resources/app_assets.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.kOnboarding),
                fit: BoxFit.cover,
              ),
            ),
          ),
          FadeInUp(
            controller: (controller) => controller = controller,
            delay: const Duration(milliseconds: 500),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Get.height * 0.8,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.kBlackColor,
                      AppColors.kTransparentColor,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 50.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 600),
                  child: Text(
                    "Your Gateway to the Greatest Shows & Movies",
                    style: AppTypography.kMedium22
                        .copyWith(color: AppColors.kWhiteColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 700),
                  child: Text(
                    "Discover an endless library of must-watch movies and shows, curated just for you, anytime, anywhere.",
                    style: AppTypography.kMedium14
                        .copyWith(color: AppColors.kSmokeColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 800),
                  child: PrimaryButton(
                    title: "Get Started",
                    onTap: () => Get.toNamed(AppRoutes.homeScreen),
                    backgroundColor: AppColors.kBlueColor,
                  ),
                ),
                SizedBox(height: 20.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 900),
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?  ",
                      style: AppTypography.kMedium14
                          .copyWith(color: AppColors.kSmokeColor),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: AppTypography.kMedium14
                              .copyWith(color: AppColors.kWhiteColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
