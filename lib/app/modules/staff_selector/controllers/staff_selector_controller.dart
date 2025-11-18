import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class StaffSelectorController extends GetxController {
  void selectStaffRole(String role) {
    switch (role) {
      case 'dokter':
        Get.toNamed(Routes.dokterLogin);
        break;
      case 'perawat':
        Get.toNamed(Routes.perawatLogin);
        break;
      case 'apoteker':
        Get.toNamed(Routes.apotekerLogin);
        break;
      case 'admin':
        Get.toNamed(Routes.adminLogin);
        break;
    }
  }
}
