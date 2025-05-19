import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class SearchBarWidget extends StatelessWidget {
  final String svgIcon;
  final String title;
  final VoidCallback onTap;
  const SearchBarWidget(
      {super.key,
      required this.title,
      required this.svgIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.kSmokeColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: title,
                border: InputBorder.none,
                hintStyle: AppTypography.kMedium14.copyWith(color: AppColors.kDarkGreyColor),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.string(
              svgIcon,
              color: AppColors.kDarkGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
