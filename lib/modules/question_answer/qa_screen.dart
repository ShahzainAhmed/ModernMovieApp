import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/question_answer/components/rating_checkbox_widget.dart';
import 'package:personal_project/modules/components/custom_appbar.dart';
import 'package:personal_project/modules/components/primary_button.dart';

class QaScreen extends StatelessWidget {
  const QaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int currentQuestion = 3;
    final int totalQuestions = 10;

    double progress = currentQuestion / totalQuestions;

    return Scaffold(
      appBar: CustomAppBar(title: "Question and Answers", isBackButton: true),
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.h, bottom: 50.h, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's Get Started", style: AppTypography.kMedium24),
            SizedBox(height: 10.h),
            Text(
              "Question $currentQuestion/$totalQuestions",
              style: AppTypography.kLight16
                  .copyWith(color: AppColors.kDarkGreyColor),
            ),
            SizedBox(height: 10.h),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.kPrimaryColor),
              minHeight: 8.h,
              borderRadius: BorderRadius.circular(6),
            ),
            SizedBox(height: 20.h),
            Text("How would you rate your child's listening?",
                style: AppTypography.kMedium24),
            SizedBox(height: 10.h),
            Text(
              "Do they always listen or never?",
              style: AppTypography.kLight16
                  .copyWith(color: AppColors.kDarkGreyColor),
            ),
            SizedBox(height: 10.h),
            RatingCheckboxWidget(
              options: [
                "Incredible",
                "Great",
                "Good",
                "Okay",
                "Really Bad",
              ],
              onSelected: (selected) {
                debugPrint("Selected $selected");
              },
            ),
            Spacer(),
            PrimaryButton(
              title: "Next Question",
              onTap: () => Get.toNamed(AppRoutes.welcomeViewScreen),
            ),
          ],
        ),
      ),
    );
  }
}
