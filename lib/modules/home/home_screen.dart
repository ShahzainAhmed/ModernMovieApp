import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_project/resources/app_assets.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/home/components/search_bar_widget.dart';
import 'package:personal_project/modules/home/components/selectable_tabs_widget.dart';
import 'package:personal_project/modules/home/components/streak_count_widget.dart';
import 'package:personal_project/modules/question_answer/components/rating_checkbox_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.w,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.profileScreen),
              child: CircleAvatar(
                foregroundImage: AssetImage(AppAssets.kProfileAvatar),
                radius: 20.r,
              ),
            ),
            Text("Hey Joy!", style: AppTypography.kMedium18),
            SvgPicture.string(AppAssets.notificationIcon),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.h, top: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(
                title: "Ask anything...",
                svgIcon: AppAssets.searchIcon,
                onTap: () => Get.toNamed(AppRoutes.chatScreen),
              ),
              SizedBox(height: 20.h),
              SelectableTabsWidget(
                tabs: ["For You", "Family", "Zadie", "Hunter"],
                onSelected: (selectedTab) {
                  debugPrint("Selected: $selectedTab");
                },
              ),
              SizedBox(height: 20.h),
              Text(
                "Your Daily Growth Streak",
                style: AppTypography.kLight16,
              ),
              SizedBox(height: 10.h),
              StreakCountWidget(),
              SizedBox(height: 10.h),
              Text("Recommended for you", style: AppTypography.kLight16),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.formScreen),
                child: Container(
                  height: 30.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent, // transparent background
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor, // inner subtle color
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(
                        "Video Player Placeholder",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Checklist",
                style: AppTypography.kMedium16,
              ),
              Text(
                "Create your checklist today",
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kDarkGreyColor),
              ),
              RatingCheckboxWidget(
                allowMultipleSelection: true,
                onSelected: (selected) {
                  debugPrint("Selected $selected");
                },
                options: [
                  "Connect with each child 1-on-1 for 10 mins",
                  "Prep a healthy snack of meal together",
                  "Practice one calming technique as a family",
                  "Celebrate one small win from today",
                ],
              ),
              Text(
                "Journal",
                style: AppTypography.kBold16
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(height: 10.h),
              SelectableTabsWidget(
                tabs: ["Morning", "Evening", "Growth", "Challenges"],
                onSelected: (selectedTab) {
                  debugPrint("Selected: $selectedTab");
                },
              ),
              SizedBox(height: 10.h),
              SearchBarWidget(
                title: "Vent it all here",
                svgIcon: AppAssets.photosAddIcon,
                onTap: () {},
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
