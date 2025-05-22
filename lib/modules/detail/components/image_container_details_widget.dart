import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/models/movie_tiles_model.dart';
import 'package:modern_movie_app/modules/detail/components/stars_widget.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class ImageContainerDetailsWidget extends StatelessWidget {
  final bool animate;
  final VoidCallback onBackPressed;

  const ImageContainerDetailsWidget({
    super.key,
    required this.animate,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    var movieData = Get.arguments;
    return Stack(
      children: [
        Positioned.fill(
          child: Hero(
            tag: movieData.image,
            child: Image.asset(
              movieData.image,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Positioned.fill(
          child: FadeInUp(
            controller: (controller) => controller = controller,
            delay: const Duration(milliseconds: 500),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.kBlackColor,
                    Colors.transparent,
                  ],
                ),
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
                  FadeInLeft(
                    animate: animate,
                    controller: (controller) => controller = controller,
                    delay: const Duration(milliseconds: 500),
                    child: CircleAvatar(
                      backgroundColor: AppColors.kSmokeColor.withAlpha(100),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: onBackPressed,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  FadeInRight(
                    animate: animate,
                    controller: (controller) => controller = controller,
                    delay: const Duration(milliseconds: 500),
                    child: CircleAvatar(
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
                  ),
                ],
              ),
              const Spacer(),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 600),
                child: Text(
                  movieData.title,
                  style: AppTypography.kBold18.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
              Row(
                children: [
                  FadeInUp(
                    animate: animate,
                    controller: (controller) => controller = controller,
                    delay: const Duration(milliseconds: 700),
                    child: Text(
                      movieData.yearOfRelease,
                      style: AppTypography.kMedium12.copyWith(
                        color: AppColors.kSmokeColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  FadeInUp(
                    animate: animate,
                    controller: (controller) => controller = controller,
                    delay: const Duration(milliseconds: 800),
                    child: StarsWidget(),
                  ),
                  SizedBox(width: 8.w),
                  FadeInUp(
                    animate: animate,
                    controller: (controller) => controller = controller,
                    delay: const Duration(milliseconds: 900),
                    child: Text(
                      movieData.duration,
                      style: AppTypography.kMedium12.copyWith(
                        color: AppColors.kSmokeColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              FadeInUp(
                animate: animate,
                controller: (controller) => controller = controller,
                delay: const Duration(milliseconds: 1000),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.kWhiteColor.withAlpha(20),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.kSmokeColor.withAlpha(50),
                  ),
                  child: Text(
                    movieData.genre,
                    style: AppTypography.kMedium10.copyWith(
                      color: AppColors.kWhiteColor,
                    ),
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
