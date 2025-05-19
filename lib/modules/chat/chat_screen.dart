import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_movie_app/controllers/chat_controller.dart';
import 'package:modern_movie_app/modules/chat/components/chat_input_field.dart';
import 'package:modern_movie_app/modules/chat/components/chat_message_widget.dart';
import 'package:modern_movie_app/modules/components/custom_appbar.dart';
import 'package:modern_movie_app/resources/app_colors.dart';
import 'package:modern_movie_app/resources/app_typography.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final ChatController chatController = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Chat Screen", isBackButton: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Obx(() {
          return chatController.messages.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Parenting Advice Chatbot",
                        style: AppTypography.kBold20
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "By nextcenturyai.com →",
                        style: AppTypography.kMedium14
                            .copyWith(color: AppColors.kDarkGreyColor),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Navigate the parenting journey with confidence using our Parenting Advice Chatbot GPT. This AI tool offers valuable tips, child development insights, and answers to common parenting queries, supporting you in nurturing a happy, healthy family environment.",
                        textAlign: TextAlign.center,
                        style: AppTypography.kMedium14
                            .copyWith(color: AppColors.kBlackColor),
                      ),
                      SizedBox(height: 40.h),
                      ChatInputField(
                        controller: chatController.messageController.value,
                        onSendMessage: chatController.sendMessage,
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 8.h),
                        itemCount: chatController.messages.length,
                        itemBuilder: (context, index) {
                          return ChatMessageWidget(
                            message: chatController.messages[index],
                          );
                        },
                      ),
                    ),
                    ChatInputField(
                        controller: chatController.messageController.value,
                        onSendMessage: chatController.sendMessage),
                  ],
                );
        }),
      ),
    );
  }
}
