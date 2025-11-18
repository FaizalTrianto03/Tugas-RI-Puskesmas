import 'package:get/get.dart';
import '../controllers/dokter_pengaturan_controller.dart';

class DokterPengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DokterPengaturanController>(
      () => DokterPengaturanController(),
    );
  }
}
