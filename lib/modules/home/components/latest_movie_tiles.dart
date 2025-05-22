import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class LatestMovieTiles extends StatelessWidget {
  final VoidCallback onTap;
  final MovieTilesModel movieTilesModel;
  final bool enableHero; // 👈 Add this flag

  const LatestMovieTiles({
    super.key,
    required this.movieTilesModel,
    required this.onTap,
    this.enableHero = true, // 👈 Default true
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Container(
      height: 110.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        image: DecorationImage(
          image: AssetImage(movieTilesModel.image),
          fit: BoxFit.cover,
        ),
      ),
    );

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 90.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            enableHero
                ? Hero(
                    tag: movieTilesModel.image,
                    child: imageWidget,
                  )
                : imageWidget,
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
