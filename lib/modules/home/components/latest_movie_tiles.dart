import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/data/services/api_service.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class LatestMovieTiles extends StatefulWidget {
  const LatestMovieTiles({super.key});

  @override
  State<LatestMovieTiles> createState() => _LatestMovieTilesState();
}

class _LatestMovieTilesState extends State<LatestMovieTiles> {
  @override
  void initState() {
    // to call the API directly without pressing any button
    super.initState();
    fetchAPI();
  }

  List<dynamic> movies = [];

  void fetchAPI() async {
    // created seperate class for APIs so we can use it in other screens as well
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
      separatorBuilder: (context, index) => SizedBox(width: 20.w),
      itemCount: movies.length,
      itemBuilder: (context, index) => SizedBox(
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
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
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            Text(
              movies[index]["Runtime"],
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kSmokeColor),
            ),
          ],
        ),
      ),
    );
  }
}
