import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modern_movie_app/models/message_model.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
class ChatMessageWidget extends StatelessWidget {
  final MessageModel message;

  const ChatMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == "user";

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isUser
              ? AppColors.kPrimaryColor
              : AppColors.kSmokeColor.withAlpha(80),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          message.content,
          style: TextStyle(
            color: isUser ? AppColors.kWhiteColor : AppColors.kBlackColor,
          ),
        ),
      ),
    );
  }
}