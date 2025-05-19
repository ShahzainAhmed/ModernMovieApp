import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/data/services/api_service.dart';
import 'package:modern_movie_app/modules/auth/components/background_gradient_card.dart';
import 'package:modern_movie_app/modules/components/custom_appbar.dart';
import 'package:modern_movie_app/modules/home/components/category_tiles.dart';
import 'package:modern_movie_app/modules/home/components/latest_movie_tiles.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundGradientCard(
      child: Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Discover Your Next \nFavorite Movie.",
                style: AppTypography.kBold24
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            ),
            SizedBox(height: 20.h),
            CategoryTiles(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest movies",
                    style: AppTypography.kBold16
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  Text(
                    "See all",
                    style: AppTypography.kBold12
                        .copyWith(color: AppColors.kBlueColor),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 200.h,
              child: LatestMovieTiles(),
            )
          ],
        ),
      ),
    ));
  }
}
