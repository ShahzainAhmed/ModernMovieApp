import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/data/services/api_service.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class UpcomingMovieTiles extends StatefulWidget {
  const UpcomingMovieTiles({super.key});

  @override
  State<UpcomingMovieTiles> createState() => _UpcomingMovieTilesState();
}

class _UpcomingMovieTilesState extends State<UpcomingMovieTiles> {
  @override
  void initState() {
    super.initState();
    fetchAPI();
  }

  List<dynamic> movies = [];

  void fetchAPI() async {
    List<dynamic> jsonData = await ApiService().fetchMovies();
    setState(() {
      movies = jsonData.reversed.toList();
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
      itemBuilder: (context, index) => Container(
        width: 240.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(movies[index]['Images'][1]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.kDarkGreyColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movies[index]['Title'],
                style: AppTypography.kMedium12
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 6.h),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: AppColors.kSmokeColor,
                    ),
                    child: Text(
                      movies[index]['Genre'],
                      style: AppTypography.kLight8
                          .copyWith(color: AppColors.kWhiteColor),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    movies[index]['Released'],
                    style: AppTypography.kLight8
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    movies[index]['Runtime'],
                    style: AppTypography.kLight8
                        .copyWith(color: AppColors.kWhiteColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
