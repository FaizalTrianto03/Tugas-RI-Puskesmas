import 'package:get/get.dart';

class ApotekerDashboardController extends GetxController {
  // Dummy data untuk week 2/3
  final RxString namaLengkap = 'Dummy Apoteker'.obs;
  final RxString namaInisial = 'Dummy Apoteker'.obs;
  
  String getAbbreviation(String nama) {
    if (nama.isEmpty) return '';
    
    final words = nama.trim().split(' ');
    if (words.length <= 2) return nama;
    
    String result = '${words[0]} ${words[1]} ';
    for (int i = 2; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        result += '${words[i][0].toUpperCase()}. ';
      }
    }
    return result.trim();
  }
  
  void goToPengaturan() {
    Get.toNamed('/apoteker/pengaturan');
  }
}
