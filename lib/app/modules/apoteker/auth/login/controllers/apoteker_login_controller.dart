import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/snackbar_helper.dart';
import '../../../../../routes/app_pages.dart';

class ApotekerLoginController extends GetxController {
  final dataDiriController = TextEditingController();
  final passwordController = TextEditingController();
  
  final RxBool isPasswordVisible = false.obs;
  final RxBool rememberMe = false.obs;
  final RxBool isLoading = false.obs;
  
  @override
  void onClose() {
    dataDiriController.dispose();
    passwordController.dispose();
    super.onClose();
  }
  
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
  
  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }
  
  Future<void> login() async {
    if (dataDiriController.text.isEmpty || passwordController.text.isEmpty) {
      SnackbarHelper.showError('Data diri dan kata sandi harus diisi');
      return;
    }
    
    // Dummy login: hanya validasi kosong + simulasi sukses
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 600));
    isLoading.value = false;

    SnackbarHelper.showSuccess('Login dummy berhasil (apoteker)');
    Get.offAllNamed(Routes.apotekerDashboard);
  }
  
  void goToForgotPassword() {
    SnackbarHelper.showInfo('Fitur lupa kata sandi akan segera tersedia');
  }
}
