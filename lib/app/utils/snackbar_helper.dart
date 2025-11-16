import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

/// Helper class untuk menampilkan snackbar dengan styling konsisten
class SnackbarHelper {
  SnackbarHelper._();

  /// Snackbar sukses (hijau)
  static void showSuccess(String message, {String title = 'Berhasil'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.success,
      colorText: AppColors.white,
      icon: const Icon(Icons.check_circle, color: AppColors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }

  /// Snackbar error (merah)
  static void showError(String message, {String title = 'Error'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.error,
      colorText: AppColors.white,
      icon: const Icon(Icons.error, color: AppColors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }

  /// Snackbar warning (kuning)
  static void showWarning(String message, {String title = 'Peringatan'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.warning,
      colorText: AppColors.white,
      icon: const Icon(Icons.warning, color: AppColors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }

  /// Snackbar info (biru)
  static void showInfo(String message, {String title = 'Informasi'}) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.info,
      colorText: AppColors.white,
      icon: const Icon(Icons.info, color: AppColors.white),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }

  /// Snackbar custom
  static void show({
    required String title,
    required String message,
    Color? backgroundColor,
    Color? textColor,
    IconData? icon,
    Duration? duration,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: backgroundColor ?? AppColors.primary,
      colorText: textColor ?? AppColors.white,
      icon: icon != null ? Icon(icon, color: textColor ?? AppColors.white) : null,
      duration: duration ?? const Duration(seconds: 3),
      margin: const EdgeInsets.all(16),
      borderRadius: 8,
    );
  }
}
