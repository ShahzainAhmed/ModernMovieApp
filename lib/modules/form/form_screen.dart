import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';
import 'package:personal_project/routes/app_routes.dart';
import 'package:personal_project/modules/auth/components/text_field_widget.dart';
import 'package:personal_project/modules/form/components/custom_drop_down.dart';
import 'package:personal_project/modules/form/components/gender_selector_widget.dart';
import 'package:personal_project/modules/components/custom_appbar.dart';
import 'package:personal_project/modules/components/primary_button.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});

  final List<String> fields = [
    "Full Name",
    "Age",
    "Phone number",
    "Date of birth",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Form Submission", isBackButton: true),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.h, top: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Family Member",
                style: AppTypography.kBold20
                    .copyWith(color: AppColors.kBlackColor),
              ),
              Text(
                "Just a few quick details to begin your journey.",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kDarkGreyColor),
              ),
              SizedBox(height: 20.h),
              ...fields.map((hint) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: TextFieldWidget(hintText: hint, hasBorder: true),
                  )),
              Text(
                "Areas of Interest",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kDarkGreyColor),
              ),
              SizedBox(height: 10.h),
              CustomDropdown(),
              SizedBox(height: 10.h),
              Text(
                "Gender",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kDarkGreyColor),
              ),
              SizedBox(height: 10.h),
              GenderSelector(),
              SizedBox(height: 10.h),
              Container(
                height: 80.h,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.kSmokeColor),
                ),
                child: TextFormField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Tell us what matters most to you right now.',
                    hintStyle: AppTypography.kMedium12,
                    border: InputBorder.none,
                  ),
                  style:
                      TextStyle(fontSize: 14.sp, color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(height: 16.h),
              PrimaryButton(
                title: "Submit Form",
                onTap: () => Get.toNamed(AppRoutes.qaScreen),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
