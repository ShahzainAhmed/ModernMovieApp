import 'package:get/get.dart';
import 'package:modern_movie_app/controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}