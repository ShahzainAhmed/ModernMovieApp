import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String? svgIcon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.svgIcon,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.borderRadius,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColors.kPrimaryColor,
          minimumSize: Size(Get.width, 40.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgIcon != null && svgIcon!.isNotEmpty) ...[
              SvgPicture.string(svgIcon!, height: 18.h, width: 18.w),
              SizedBox(width: 10.w),
            ],
            Text(
              title,
              style: AppTypography.kBold10.copyWith(
                fontSize: fontSize ?? 16.sp,
                fontWeight: fontWeight ?? FontWeight.w600,
                color: textColor ?? AppColors.kWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
