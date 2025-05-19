import 'package:get/get.dart';
import 'package:personal_project/controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}