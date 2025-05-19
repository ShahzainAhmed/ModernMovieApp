import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class SelectableTabsWidget extends StatefulWidget {
  final List<String> tabs;
  final Function(String) onSelected;

  const SelectableTabsWidget({
    super.key,
    required this.tabs,
    required this.onSelected,
  });

  @override
  State<SelectableTabsWidget> createState() => _SelectableTabsWidgetState();
}

class _SelectableTabsWidgetState extends State<SelectableTabsWidget> {
  String selected = '';

  @override
  void initState() {
    super.initState();
    selected = widget.tabs.first;
    widget.onSelected(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: widget.tabs.map((tab) {
        final isSelected = selected == tab;
        return GestureDetector(
          onTap: () {
            setState(() {
              selected = tab;
              widget.onSelected(tab);
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.kPrimaryColor
                  : AppColors.kTransparentColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              tab,
              style: AppTypography.kMedium14.copyWith(
                color: isSelected
                    ? AppColors.kWhiteColor
                    : AppColors.kDarkGreyColor,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
