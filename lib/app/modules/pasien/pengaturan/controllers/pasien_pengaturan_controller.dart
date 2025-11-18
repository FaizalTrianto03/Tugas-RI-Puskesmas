import 'package:get/get.dart';

import '../../../../utils/snackbar_helper.dart';
import '../../../../utils/confirmation_dialog.dart';
import '../../../../routes/app_pages.dart';

class PasienPengaturanController extends GetxController {
  // Dummy data untuk week 2/3
  final RxString namaLengkap = 'Dummy Pasien'.obs;
  final RxString namaInisial = 'Dummy Pasien'.obs;
  
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
  
  void kelolaDataDiri() {
    SnackbarHelper.showInfo('Fitur Kelola Data Diri akan segera tersedia');
  }
  
  void kelolaKataSandi() {
    SnackbarHelper.showInfo('Fitur Kelola Kata Sandi akan segera tersedia');
  }
  
  void showLogoutDialog() {
    ConfirmationDialog.show(
      title: 'Konfirmasi Keluar',
      message: 'Apakah Anda yakin ingin keluar dari akun?',
      type: ConfirmationType.danger,
      confirmText: 'Keluar',
      cancelText: 'Batal',
      onConfirm: _logout,
    );
  }
  
  Future<void> _logout() async {
    // Dummy logout
    await Future.delayed(const Duration(milliseconds: 300));
    SnackbarHelper.showSuccess('Berhasil keluar dari akun (dummy)');
    Get.offAllNamed(Routes.pasienLogin);
  }
}
