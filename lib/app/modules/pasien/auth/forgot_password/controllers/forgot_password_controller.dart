import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/snackbar_helper.dart';

class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();
  final otpController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final RxInt currentStep = 0.obs; // 0: email, 1: otp, 2: reset password
  final RxBool isLoading = false.obs;
  final RxBool isPasswordVisible = false.obs;
  final RxBool isConfirmPasswordVisible = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    otpController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  Future<void> sendOTP() async {
    if (emailController.text.isEmpty) {
      SnackbarHelper.showError('Email harus diisi');
      return;
    }

    if (!GetUtils.isEmail(emailController.text)) {
      SnackbarHelper.showError('Format email tidak valid');
      return;
    }

    isLoading.value = true;

    try {
      await Future.delayed(const Duration(seconds: 2));

      currentStep.value = 1;
      SnackbarHelper.showSuccess('Kode OTP telah dikirim ke email Anda');
    } catch (e) {
      SnackbarHelper.showError('Gagal mengirim OTP: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> verifyOTP() async {
    if (otpController.text.isEmpty) {
      SnackbarHelper.showError('Kode OTP harus diisi');
      return;
    }

    isLoading.value = true;

    try {
      await Future.delayed(const Duration(seconds: 2));

      currentStep.value = 2;
      SnackbarHelper.showSuccess('Kode OTP berhasil diverifikasi');
    } catch (e) {
      SnackbarHelper.showError('Kode OTP tidak valid');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> resetPassword() async {
    if (newPasswordController.text.isEmpty || 
        confirmPasswordController.text.isEmpty) {
      SnackbarHelper.showError('Semua field harus diisi');
      return;
    }

    if (newPasswordController.text != confirmPasswordController.text) {
      SnackbarHelper.showError('Konfirmasi kata sandi tidak cocok');
      return;
    }

    if (newPasswordController.text.length < 6) {
      SnackbarHelper.showError('Kata sandi minimal 6 karakter');
      return;
    }

    isLoading.value = true;

    try {
      await Future.delayed(const Duration(seconds: 2));

      SnackbarHelper.showSuccess('Kata sandi berhasil diubah');

      Get.back();
    } catch (e) {
      SnackbarHelper.showError('Gagal mengubah kata sandi: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }

  void goBack() {
    if (currentStep.value > 0) {
      currentStep.value--;
    } else {
      Get.back();
    }
  }
}
