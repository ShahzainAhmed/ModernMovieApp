import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class StreakCountWidget extends StatelessWidget {
  StreakCountWidget({super.key});

  final List<String> streakDaysList = ["S", "M", "T", "W", "T", "F", "S"];
  final int completedStreakCount = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(streakDaysList.length, (index) {
        bool isCompleted =
            index >= streakDaysList.length - completedStreakCount;

        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                isCompleted ? AppColors.kPrimaryColor : AppColors.kWhiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.kGreyColor.withAlpha(60),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          width: 32.r,
          height: 32.r,
          alignment: Alignment.center,
          child: Text(
            streakDaysList[index],
            style: AppTypography.kMedium14.copyWith(
              color: isCompleted
                  ? AppColors.kWhiteColor
                  : AppColors.kDarkGreyColor,
            ),
          ),
        );
      }),
    );
  }
}
