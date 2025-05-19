import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_assets.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/components/custom_appbar.dart';
import 'package:personal_project/modules/components/primary_button.dart';

class WelcomeViewScreen extends StatelessWidget {
  const WelcomeViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Your Success Library"),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.h, bottom: 50.h),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            Container(
              height: 200.h,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.kWelcomeBanner),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kBlackColor.withAlpha(51),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Welcome to Sandra.AI",
              style:
                  AppTypography.kBold20.copyWith(color: AppColors.kBlackColor),
            ),
            SizedBox(height: 6.h),
            Center(
              child: Text(
                "10:00 am | Meet Sandra | Supportive Session",
                style: AppTypography.kBold14
                    .copyWith(color: AppColors.kPrimaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Welcome to Sandra.AI - I'm Sandra, a real person and your guide throughout this journey. I've created this space to support you with care, understanding, and real-life tools for parenting. You're not alone - I'm here with you every step of the way.",
              style: AppTypography.kMedium14
                  .copyWith(color: AppColors.kDarkGreyColor),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            PrimaryButton(
              title: "Watch Now",
              onTap: () => Get.toNamed(AppRoutes.signupScreen),
            ),
          ],
        ),
      ),
    );
  }
}
