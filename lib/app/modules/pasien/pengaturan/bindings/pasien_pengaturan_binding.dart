import 'package:get/get.dart';
import '../controllers/pasien_pengaturan_controller.dart';

class PasienPengaturanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasienPengaturanController>(
      () => PasienPengaturanController(),
    );
  }
}
