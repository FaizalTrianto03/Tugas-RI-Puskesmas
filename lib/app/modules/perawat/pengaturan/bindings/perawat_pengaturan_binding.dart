import 'package:get/get.dart';
import '../controllers/perawat_pengaturan_controller.dart';

class PerawatPengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PerawatPengaturanController>(
      () => PerawatPengaturanController(),
    );
  }
}
