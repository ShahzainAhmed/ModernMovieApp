import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/models/profile_button_list.dart';
import 'package:personal_project/resources/app_assets.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/modules/profile/components/profile_button_widget.dart';
import 'package:personal_project/modules/components/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile", isBackButton: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  foregroundImage: AssetImage(AppAssets.kProfileAvatar),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: AppColors.kGreyColor,
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joy Augustin",
                      style: AppTypography.kBold18,
                    ),
                    Text(
                      "joy@augustin.com",
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kGreyColor.withAlpha(150)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Account",
              style: AppTypography.kMedium14
                  .copyWith(color: AppColors.kDarkGreyColor),
            ),
            SizedBox(height: 10.h),
            ...profileButtonsAccount.map((button) {
              return Column(
                children: [
                  ProfileButtonWidget(
                    title: button['title'],
                    icon: button['icon'],
                  ),
                  SizedBox(height: 10.h),
                ],
              );
            }),
            SizedBox(height: 10.h),
            Text(
              "General",
              style: AppTypography.kMedium14
                  .copyWith(color: AppColors.kDarkGreyColor),
            ),
            SizedBox(height: 10.h),
            ...profileButtonsGeneral.map((button) {
              return Column(
                children: [
                  ProfileButtonWidget(
                    title: button['title'],
                    icon: button['icon'],
                  ),
                  SizedBox(height: 10.h),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
