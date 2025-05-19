import 'package:flutter/material.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class RatingCheckboxWidget extends StatefulWidget {
  final Function(List<String>) onSelected;
  final List<String> options;
  final bool allowMultipleSelection;

  const RatingCheckboxWidget({
    super.key,
    required this.onSelected,
    required this.options,
    this.allowMultipleSelection = false,
  });

  @override
  RatingCheckboxWidgetState createState() => RatingCheckboxWidgetState();
}

class RatingCheckboxWidgetState extends State<RatingCheckboxWidget> {
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.options.map((option) {
        final isSelected = selectedOptions.contains(option);
        return CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
          title: Text(option, style: AppTypography.kLight14),
          value: isSelected,
          activeColor: AppColors.kPrimaryColor,
          onChanged: (_) {
            setState(() {
              if (widget.allowMultipleSelection) {
                //  Multi-select logic
                if (isSelected) {
                  selectedOptions.remove(option);
                } else {
                  selectedOptions.add(option);
                }
              } else {
                // single-select logic
                selectedOptions = [option];
              }
              widget.onSelected(selectedOptions);
            });
          },
        );
      }).toList(),
    );
  }
}
