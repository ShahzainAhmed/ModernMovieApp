import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/controllers/drop_down_controller.dart';
import 'package:personal_project/resources/app_typography.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown({super.key});

  final DropdownController controller = Get.find<DropdownController>();

  OutlineInputBorder customBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButtonFormField<String>(
        value: controller.selectedValue.value,
        decoration: InputDecoration(
          hintText: 'Select one...',
          hintStyle: AppTypography.kMedium14.copyWith(color: AppColors.kBlackColor),
          filled: true,
          fillColor: AppColors.kLightGreyColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          enabledBorder: customBorder(AppColors.kSmokeColor),
          focusedBorder: customBorder(AppColors.kSmokeColor),
          disabledBorder: customBorder(AppColors.kSmokeColor),
          errorBorder: customBorder(Colors.red),
          focusedErrorBorder: customBorder(Colors.red),
        ),
        items: controller.options
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (value) {
          controller.selectedValue.value = value;
        },
      ),
    );
  }
}
