import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

class LatestMovieTiles extends StatelessWidget {
  const LatestMovieTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => SizedBox(width: 12.w),
      itemCount: movieTileList.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Get.toNamed(AppRoutes.detailScreen,
            arguments: movieTileList[index]),
        child: SizedBox(
          width: 90.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(movieTileList[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                movieTileList[index].title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.kBold10
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              Text(
                movieTileList[index].duration,
                style: AppTypography.kMedium10
                    .copyWith(color: AppColors.kSmokeColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
