import 'package:get/get.dart';
import 'package:personal_project/controllers/chat_controller.dart';

class ChatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController(), fenix: true);
  }
}
