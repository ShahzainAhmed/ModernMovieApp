import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class ButtonInfo {
  final String title;
  final IconData icon;
  final Color buttonColor;
  final Color iconColor;
  final Color textColor;
  final double width;
  final double? height;
  final bool iconOnRight;
  final double iconSize;

  ButtonInfo({
    required this.title,
    required this.icon,
    required this.buttonColor,
    required this.iconColor,
    required this.textColor,
    required this.width,
    this.height,
    this.iconOnRight = false,
    this.iconSize = 24.0,
  });
}

final List<ButtonInfo> buttons = [
  ButtonInfo(
    title: 'Save',
    icon: Icons.play_arrow_rounded,
    buttonColor: AppColors.kDarkGreyColor,
    iconColor: AppColors.kWhiteColor,
    textColor: AppColors.kWhiteColor,
    width: 10.w,
    height: 6,
    iconOnRight: true,
    iconSize: 16,
  ),
  ButtonInfo(
    title: 'Share',
    icon: Icons.share,
    buttonColor: AppColors.kDarkGreyColor,
    iconColor: AppColors.kWhiteColor,
    textColor: AppColors.kWhiteColor,
    width: 10.w,
    height: 6,
    iconOnRight: true,
    iconSize: 16,
  ),
  ButtonInfo(
    title: 'Download',
    icon: Icons.download,
    buttonColor: AppColors.kDarkGreyColor,
    iconColor: AppColors.kWhiteColor,
    textColor: AppColors.kWhiteColor,
    width: 10.w,
    height: 6,
    iconOnRight: true,
    iconSize: 16,
  ),
];
