import 'package:get/get.dart';
import '../controllers/apoteker_pengaturan_controller.dart';

class ApotekerPengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApotekerPengaturanController>(
      () => ApotekerPengaturanController(),
    );
  }
}
