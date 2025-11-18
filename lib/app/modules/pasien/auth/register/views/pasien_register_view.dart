import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pasien_register_controller.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/text_styles.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../../../widgets/custom_button.dart';

class PasienRegisterView extends GetView<PasienRegisterController> {
  const PasienRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pasien Baru',
          style: AppTextStyles.h3.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.gradientTop, AppColors.gradientBottom],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.white,
          ),
          Positioned(
            bottom: -420, // turun sedikit lagi
            right: -300,  // geser sedikit ke kanan
            child: Container(
              width: 720,
              height: 720,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    AppColors.gradientBottom.withValues(alpha: 0.38), // lebih pekat di kiri bawah
                    AppColors.gradientTop.withValues(alpha: 0.18),    // transisi tengah
                    AppColors.gradientTop.withValues(alpha: 0.0),     // memudar ke arah atas / kanan
                  ],
                  stops: const [0.0, 0.55, 1.0],
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Lengkapi Data Anda',
                    style: AppTextStyles.h4.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'NIK'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.nikController,
                    hintText: 'Masukkan 16 digit NIK',
                    keyboardType: TextInputType.number,
                    prefixIcon: const Icon(Icons.badge_outlined, color: Colors.grey),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Nama Lengkap'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.namaController,
                    hintText: 'Masukkan nama lengkap',
                    prefixIcon: const Icon(Icons.person_outline, color: Colors.grey),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Username'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.usernameController,
                    hintText: 'Masukkan username untuk login',
                    prefixIcon: const Icon(Icons.alternate_email, color: Colors.grey),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: AppTextStyles.bodyMedium.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: const [
                                  TextSpan(text: 'Jenis Kelamin'),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: AppColors.accent),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Obx(() => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: AppColors.primary,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () => controller.setJenisKelamin('L'),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        decoration: BoxDecoration(
                                          color: controller.jenisKelamin.value == 'L' 
                                            ? AppColors.primary 
                                            : AppColors.white,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(11),
                                            bottomLeft: Radius.circular(11),
                                          ),
                                        ),
                                        child: Text(
                                          'L',
                                          style: AppTextStyles.bodyMedium.copyWith(
                                            color: controller.jenisKelamin.value == 'L' 
                                              ? AppColors.white 
                                              : AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 48,
                                    color: AppColors.primary,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () => controller.setJenisKelamin('P'),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        decoration: BoxDecoration(
                                          color: controller.jenisKelamin.value == 'P' 
                                            ? AppColors.primary 
                                            : AppColors.white,
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                        child: Text(
                                          'P',
                                          style: AppTextStyles.bodyMedium.copyWith(
                                            color: controller.jenisKelamin.value == 'P' 
                                              ? AppColors.white 
                                              : AppColors.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: AppTextStyles.bodyMedium.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: const [
                                  TextSpan(text: 'Tanggal Lahir'),
                                  TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: AppColors.accent),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Obx(() => InkWell(
                              onTap: () => controller.selectDate(context),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: AppColors.primary, width: 1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.calendar_today_outlined, color: Colors.grey, size: 18),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        controller.formattedDate.isEmpty ? 'dd/mm/yyyy' : controller.formattedDate,
                                        style: AppTextStyles.bodySmall.copyWith(
                                          color: controller.formattedDate.isEmpty 
                                            ? Colors.grey
                                            : Colors.black87,
                                          fontSize: 13,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Email'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.emailController,
                    hintText: 'Masukkan email',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'No Telepon'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.noTelpController,
                    hintText: 'Masukkan nomor telepon',
                    keyboardType: TextInputType.phone,
                    prefixIcon: const Icon(Icons.phone_outlined, color: Colors.grey),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Alamat'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextField(
                    controller: controller.alamatController,
                    hintText: 'Masukkan alamat lengkap',
                    maxLines: 3,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Icon(Icons.home_outlined, color: Colors.grey),
                    ),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Kata Sandi'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Obx(() => CustomTextField(
                    controller: controller.passwordController,
                    hintText: 'Masukkan kata sandi (min. 6 karakter)',
                    obscureText: !controller.isPasswordVisible.value,
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isPasswordVisible.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: controller.togglePasswordVisibility,
                    ),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  )),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(text: 'Konfirmasi Kata Sandi'),
                        TextSpan(
                          text: ' *',
                          style: TextStyle(color: AppColors.accent),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Obx(() => CustomTextField(
                    controller: controller.confirmPasswordController,
                    hintText: 'Masukkan ulang kata sandi',
                    obscureText: !controller.isConfirmPasswordVisible.value,
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isConfirmPasswordVisible.value ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: controller.toggleConfirmPasswordVisibility,
                    ),
                    backgroundColor: AppColors.white,
                    textColor: Colors.black87,
                    hintColor: Colors.grey,
                    borderColor: AppColors.primary,
                    borderWidth: 1,
                  )),
                  const SizedBox(height: 32),
                  Obx(() => CustomButton(
                    text: 'DAFTAR SEKARANG',
                    onPressed: controller.register,
                    isLoading: controller.isLoading.value,
                    backgroundColor: AppColors.primary,
                    textColor: AppColors.white,
                    borderColor: AppColors.white,
                    borderWidth: 2,
                  )),
                  const SizedBox(height: 16),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sudah punya akun? ',
                          style: AppTextStyles.bodyMedium.copyWith(color: Colors.black54),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(0, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            'Login di sini',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
