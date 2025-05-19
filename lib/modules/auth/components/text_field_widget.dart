import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/resources/app_colors.dart';
import 'package:personal_project/resources/app_typography.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final bool hasBorder;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.hasBorder = false,
    this.controller,
    this.validator,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.isPassword
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintStyle: AppTypography.kMedium14,
        hintText: widget.hintText,
        filled: true,
        fillColor: AppColors.kLightGreyColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: widget.hasBorder
              ? const BorderSide(color: AppColors.kSmokeColor)
              : BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
