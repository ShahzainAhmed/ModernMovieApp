import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class CategoryTiles extends StatefulWidget {
  const CategoryTiles({super.key});

  @override
  State<CategoryTiles> createState() => _CategoryTilesState();
}

class _CategoryTilesState extends State<CategoryTiles> {
  final List<String> categoriesList = [
    "All",
    "Action",
    "Drama",
    "Comedy",
    "Science",
    "Romance",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  width: 1.0,
                  color:
                      isSelected ? AppColors.kWhiteColor : AppColors.kGreyColor,
                ),
                color: isSelected
                    ? AppColors.kBlueColor
                    : AppColors.kDarkGreyColor,
              ),
              child: Center(
                child: Text(
                  categoriesList[index],
                  style: AppTypography.kMedium12.copyWith(
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
