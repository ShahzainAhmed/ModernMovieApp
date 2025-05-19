import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String selectedGender = '';

  final List<String> genders = ['Female', 'Male', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: genders.map((gender) {
        final bool isSelected = selectedGender == gender;
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = gender;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.kLightGreenColor
                      : AppColors.kSmokeColor.withAlpha(40),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.kTealColor
                        : AppColors.kSmokeColor.withAlpha(90),
                    width: 1.7,
                  ),
                ),
                child: Text(
                  gender,
                  style: AppTypography.kMedium14.copyWith(
                    color: isSelected
                        ? AppColors.kBlackColor
                        : AppColors.kDarkGreyColor,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
          ],
        );
      }).toList(),
    );
  }
}
