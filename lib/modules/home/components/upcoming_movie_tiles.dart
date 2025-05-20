import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

class UpcomingMovieTiles extends StatelessWidget {
  const UpcomingMovieTiles({super.key});

  @override
  Widget build(BuildContext context) {
    final reversedList = movieTileList.reversed.toList();

    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => SizedBox(width: 12.w),
      itemCount: reversedList.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Get.toNamed(
          AppRoutes.detailScreen,
          arguments: reversedList[index],
        ),
        child: SizedBox(
          width: 240.w,
          height: 320.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(reversedList[index].image),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              // Gradient Overlay
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.kBlackColor.withAlpha(200),
                      AppColors.kTransparentColor,
                    ],
                  ),
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reversedList[index].title,
                      style: AppTypography.kMedium12
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: AppColors.kSmokeColor.withAlpha(140),
                          ),
                          child: Text(
                            reversedList[index].genre,
                            style: AppTypography.kMedium8
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          reversedList[index].yearOfRelease,
                          style: AppTypography.kMedium8
                              .copyWith(color: AppColors.kWhiteColor),
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          reversedList[index].duration,
                          style: AppTypography.kMedium8
                              .copyWith(color: AppColors.kWhiteColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
