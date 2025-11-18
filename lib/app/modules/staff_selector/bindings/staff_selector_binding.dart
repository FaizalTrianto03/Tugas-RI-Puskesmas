import 'package:get/get.dart';
import '../controllers/staff_selector_controller.dart';

class StaffSelectorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StaffSelectorController>(
      () => StaffSelectorController(),
    );
  }
}
