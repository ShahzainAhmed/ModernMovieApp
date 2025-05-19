import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_movie_app/resources/app_assets.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            foregroundImage: AssetImage(AppAssets.kProfilePicture),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,",
                style: AppTypography.kMedium10
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              Text(
                "Shahzain Ahmed",
                style: AppTypography.kBold14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.kSmokeColor,
            ),
            child: Row(
              children: [
                SvgPicture.string(AppAssets.searchIcon,
                    height: 16.h, width: 16.w),
                Text(
                  'Search',
                  style: AppTypography.kLight12
                      .copyWith(color: AppColors.kDarkGreyColor),
                )
              ],
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.kSmokeColor,
            ),
            child: SvgPicture.string(
              AppAssets.notificationIcon,
              height: 16.h,
              width: 16.w,
            ),
          )
        ],
      ),
    );
  }
}
