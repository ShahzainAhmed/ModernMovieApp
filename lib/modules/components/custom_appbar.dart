import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackButton;
  final String title;
  const CustomAppBar(
      {super.key, required this.title, this.isBackButton = false});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: isBackButton
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_ios_new, size: 20.sp),
            )
          : null,
      title: Text(
        title,
        style: AppTypography.kMedium18.copyWith(color: AppColors.kBlackColor),
      ),
    );
  }
}
