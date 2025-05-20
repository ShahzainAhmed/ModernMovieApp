import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/button_info.dart';
import 'package:modern_movie_app/modules/detail/components/button_widgets.dart';
import 'package:modern_movie_app/modules/detail/components/image_container_details_widget.dart';
import 'package:modern_movie_app/modules/home/components/latest_movie_tiles.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var movieData = Get.arguments;
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.45,
              width: Get.width,
              child: ImageContainerDetailsWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidgets(
                          height: 8.h,
                          width: 26.w,
                          title: "Trailer",
                          iconColor: AppColors.kBlackColor,
                          icon: Icons.play_arrow_rounded,
                          buttonColor: AppColors.kWhiteColor,
                          textColor: AppColors.kBlackColor,
                        ),
                        ButtonWidgets(
                          height: 8.h,
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
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
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
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "Storyline",
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      movieData.description,
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: ButtonWidgets(
                      title: 'Read more',
                      icon: Icons.keyboard_arrow_down,
                      buttonColor: AppColors.kDarkGreyColor,
                      iconColor: AppColors.kWhiteColor,
                      textColor: AppColors.kWhiteColor,
                      width: 10.w,
                      height: 10,
                      iconOnRight: true,
                      iconSize: 20,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "More like this",
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 200.h,
                    child: LatestMovieTiles(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
