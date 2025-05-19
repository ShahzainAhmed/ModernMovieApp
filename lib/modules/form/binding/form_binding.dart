import 'package:get/get.dart';
import 'package:personal_project/controllers/drop_down_controller.dart';

class FormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DropdownController(), fenix: true);
  }
}
