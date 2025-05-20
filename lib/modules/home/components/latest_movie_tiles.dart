import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:modern_movie_app/data/services/api_service.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';
import 'package:modern_movie_app/routes/app_routes.dart';

class LatestMovieTiles extends StatefulWidget {
  const LatestMovieTiles({super.key});

  @override
  State<LatestMovieTiles> createState() => _LatestMovieTilesState();
}

class _LatestMovieTilesState extends State<LatestMovieTiles> {
  @override
  void initState() {
    super.initState();
    fetchAPI();
  }

  List<dynamic> movies = [];

  void fetchAPI() async {
    List<dynamic> jsonData = await ApiService().fetchMovies();
    setState(() {
      movies = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => SizedBox(width: 12.w),
      itemCount: movies.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () =>
            Get.toNamed(AppRoutes.detailScreen, arguments: movies[index]),
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
                    image: NetworkImage(movies[index]['Images'][1]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                movies[index]['Title'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.kBold10
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              Text(
                movies[index]["Runtime"],
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
