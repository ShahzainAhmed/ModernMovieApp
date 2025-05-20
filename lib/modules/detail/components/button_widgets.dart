import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class ButtonWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final double width;
  final double? height;
  final bool isSizedBox;
  final bool iconOnRight;
  final double iconSize;

  const ButtonWidgets({
    super.key,
    required this.title,
    required this.iconColor,
    required this.icon,
    required this.buttonColor,
    required this.textColor,
    required this.width,
    this.height,
    this.isSizedBox = false,
    this.iconOnRight = false,
    this.iconSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    final verticalPadding = height ?? 10.h;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: width,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kWhiteColor.withAlpha(20)),
        borderRadius: BorderRadius.circular(50.r),
        color: buttonColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: iconOnRight
            ? [
                Text(
                  title,
                  style: AppTypography.kMedium12.copyWith(color: textColor),
                ),
                SizedBox(width: isSizedBox ? 6.w : 0),
                Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
              ]
            : [
                Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                ),
                SizedBox(width: isSizedBox ? 6.w : 0),
                Text(
                  title,
                  style: AppTypography.kMedium12.copyWith(color: textColor),
                ),
              ],
      ),
    );
  }
}
