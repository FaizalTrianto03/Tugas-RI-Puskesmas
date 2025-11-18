import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../routes/app_pages.dart';
import '../../../../../utils/snackbar_helper.dart';

class PasienLoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
  final RxBool isPasswordVisible = false.obs;
  final RxBool rememberMe = false.obs;
  final RxBool isLoading = false.obs;

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  Future<void> login() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      SnackbarHelper.showError('Username dan Password harus diisi');
      return;
    }

    // Dummy login: hanya validasi kosong + simulasi sukses
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 600));
    isLoading.value = false;

    SnackbarHelper.showSuccess('Login dummy berhasil (pasien)');
    Get.offAllNamed(Routes.pasienDashboard);
  }

  void goToRegister() {
    Get.toNamed(Routes.pasienRegister);
  }

  void goToForgotPassword() {
    Get.toNamed(Routes.pasienForgotPassword);
  }

  void goToStaffLogin() {
    Get.toNamed(Routes.staffSelector);
  }
}
