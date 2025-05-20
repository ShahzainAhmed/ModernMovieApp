import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/button_info.dart';
import 'package:modern_movie_app/modules/detail/components/button_widgets.dart';
import 'package:modern_movie_app/modules/detail/components/image_container_details_widget.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.45,
            width: Get.width,
            child: ImageContainerDetailsWidget(),
          ),
          Container(
            height: Get.height * 0.55,
            color: AppColors.kBlackColor,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidgets(
                      width: 26.w,
                      title: "Trailer",
                      iconColor: AppColors.kBlackColor,
                      icon: Icons.play_arrow_rounded,
                      buttonColor: AppColors.kWhiteColor,
                      textColor: AppColors.kBlackColor,
                    ),
                    ButtonWidgets(
                      width: 55.w,
                      isSizedBox: true,
                      title: "Watch now",
                      iconColor: AppColors.kWhiteColor,
                      icon: Icons.videocam_rounded,
                      buttonColor: AppColors.kBlueColor,
                      textColor: AppColors.kWhiteColor,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: buttons
                      .map((button) => Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: ButtonWidgets(
                              title: button.title,
                              icon: button.icon,
                              buttonColor: button.buttonColor,
                              iconColor: button.iconColor,
                              textColor: button.textColor,
                              width: button.width,
                              height: button.height,
                              iconOnRight: button.iconOnRight,
                              iconSize: button.iconSize,
                              isSizedBox: true,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
