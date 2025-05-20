import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class ImageContainerDetailsWidget extends StatelessWidget {
  const ImageContainerDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final movieData = Get.arguments;
    final List<double> ratingOptions = [2.6, 3.5, 4.5, 5.0];
    final double randomRating =
        ratingOptions[Random().nextInt(ratingOptions.length)];
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            movieData['Images'][0] ?? '',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.kBlackColor.withAlpha(255),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h, bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.kSmokeColor.withAlpha(100),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.kSmokeColor.withAlpha(100),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                movieData['Title'] ?? 'No Title',
                style: AppTypography.kBold18.copyWith(
                  color: AppColors.kWhiteColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    movieData['Year'] ?? '',
                    style: AppTypography.kMedium12.copyWith(
                      color: AppColors.kSmokeColor,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  ...List.generate(5, (index) {
                    if (index < randomRating.floor()) {
                      return Icon(Icons.star,
                          color: AppColors.kYellowColor, size: 12.h);
                    } else if (index < randomRating && randomRating % 1 != 0) {
                      return Icon(Icons.star_half,
                          color: AppColors.kYellowColor, size: 12.h);
                    } else {
                      return Icon(Icons.star,
                          color: AppColors.kSmokeColor, size: 12.h);
                    }
                  }),
                  SizedBox(width: 8.w),
                  Text(
                    movieData['Runtime'] ?? '',
                    style: AppTypography.kMedium12.copyWith(
                      color: AppColors.kSmokeColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.kWhiteColor.withAlpha(20),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.kSmokeColor.withAlpha(50),
                ),
                child: Text(
                  movieData['Genre'] ?? '',
                  style: AppTypography.kMedium10.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
