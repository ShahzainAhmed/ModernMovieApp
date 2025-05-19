import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_project/models/message_model.dart';

class ChatController extends GetxController {
  var messages = <MessageModel>[].obs;
  var messageController = TextEditingController().obs;

  void sendMessage() {
    final text = messageController.value.text.trim();
    if (text.isNotEmpty) {
      messages.add(MessageModel(role: "user", content: text));
      messages.add(
        MessageModel(role: "bot", content: "This is a sample response"),
      );
      messageController.value.clear();
    }
  }
}
