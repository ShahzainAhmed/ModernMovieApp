import 'package:get/get.dart';
import 'package:modern_movie_app/controllers/chat_controller.dart';

class ChatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController(), fenix: true);
  }
}
