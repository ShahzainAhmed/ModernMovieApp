import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class LatestMovieTiles extends StatelessWidget {
  final VoidCallback onTap;
  final MovieTilesModel movieTilesModel;

  const LatestMovieTiles({
    super.key,
    required this.movieTilesModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 90.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: movieTilesModel.image,
              child: Container(
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(movieTilesModel.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              movieTilesModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  AppTypography.kBold10.copyWith(color: AppColors.kWhiteColor),
            ),
            Text(
              movieTilesModel.duration,
              style: AppTypography.kMedium10
                  .copyWith(color: AppColors.kSmokeColor),
            ),
          ],
        ),
      ),
    );
  }
}
