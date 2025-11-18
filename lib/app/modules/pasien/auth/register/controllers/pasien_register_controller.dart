import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/snackbar_helper.dart';
import '../../../../../routes/app_pages.dart';

class PasienRegisterController extends GetxController {
  // Controllers untuk form input
  final nikController = TextEditingController();
  final namaController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final noTelpController = TextEditingController();
  final alamatController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final RxBool isPasswordVisible = false.obs;
  final RxBool isConfirmPasswordVisible = false.obs;
  final RxBool isLoading = false.obs;
  final Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  final RxString jenisKelamin = 'L'.obs;

  @override
  void onClose() {
    nikController.dispose();
    namaController.dispose();
    usernameController.dispose();
    emailController.dispose();
    noTelpController.dispose();
    alamatController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void setJenisKelamin(String value) {
    jenisKelamin.value = value;
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 20)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xFF02B1BA),
            colorScheme: const ColorScheme.light(
              primary: Color(0xFF02B1BA),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      selectedDate.value = picked;
    }
  }

  String get formattedDate {
    if (selectedDate.value == null) return '';
    return '${selectedDate.value!.day.toString().padLeft(2, '0')}-'
        '${selectedDate.value!.month.toString().padLeft(2, '0')}-'
        '${selectedDate.value!.year}';
  }

  Future<void> register() async {
    // Validasi form
    if (nikController.text.isEmpty ||
        namaController.text.isEmpty ||
        usernameController.text.isEmpty ||
        emailController.text.isEmpty ||
        noTelpController.text.isEmpty ||
        alamatController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty ||
        selectedDate.value == null) {
      SnackbarHelper.showError('Semua field harus diisi');
      return;
    }

    if (!GetUtils.isEmail(emailController.text)) {
      SnackbarHelper.showError('Format email tidak valid');
      return;
    }

    if (nikController.text.length != 16) {
      SnackbarHelper.showError('NIK harus 16 digit');
      return;
    }
    
    if (usernameController.text.length < 3) {
      SnackbarHelper.showError('Username minimal 3 karakter');
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      SnackbarHelper.showError('Konfirmasi kata sandi tidak cocok');
      return;
    }

    if (passwordController.text.length < 6) {
      SnackbarHelper.showError('Kata sandi minimal 6 karakter');
      return;
    }

    // Dummy register: hanya validasi + simulasi sukses
    isLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 800));
    isLoading.value = false;

    SnackbarHelper.showSuccess('Registrasi dummy berhasil!');
    Get.offAllNamed(Routes.pasienDashboard);
  }
}
