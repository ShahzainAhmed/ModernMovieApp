import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_project/resources/app_colors.dart';

class BackgroundGradientCard extends StatelessWidget {
  final Widget? child;

  const BackgroundGradientCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.kGradient1,
            AppColors.kGradient2,
          ],
        ),
      ),
      child: child,
    );
  }
}
