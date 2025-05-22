import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/modules/auth/components/background_gradient_card.dart';
import 'package:modern_movie_app/modules/components/custom_appbar.dart';
import 'package:modern_movie_app/modules/home/components/category_tiles.dart';
import 'package:modern_movie_app/modules/home/components/latest_movie_tiles.dart';
import 'package:modern_movie_app/modules/home/components/upcoming_movie_tiles.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

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
            FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 500),
              child: CustomAppBar(),
            ),
            SizedBox(height: 20.h),
            FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Discover Your Next \nFavorite Movie.",
                  style: AppTypography.kBold24
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            FadeInRight(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 700),
              child: CategoryTiles(),
            ),
            SizedBox(height: 20.h),
            FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 800),
              child: Padding(
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
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 170.h,
              child: FadeInRight(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 900),
                child: ListView.separated(
                  itemCount: movieTileList.length,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 12.w),
                  itemBuilder: (context, index) => LatestMovieTiles(
                    movieTilesModel: movieTileList[index],
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.detailScreen,
                        arguments: movieTileList[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 1000),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Upcoming",
                  style: AppTypography.kBold16
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 110.h,
              child: FadeInRight(
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 1100),
                child: UpcomingMovieTiles(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
