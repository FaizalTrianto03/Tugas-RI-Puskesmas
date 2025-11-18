import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import '../controllers/forgot_password_controller.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/text_styles.dart';
import '../../../../../widgets/custom_text_field.dart';
import '../../../../../widgets/custom_button.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.gradientTop,
              AppColors.gradientBottom,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header with back button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                      ),
                      onPressed: controller.goBack,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Lupa Kata Sandi',
                      style: AppTextStyles.h3.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Obx(() {
                    switch (controller.currentStep.value) {
                      case 0:
                        return _buildEmailStep();
                      case 1:
                        return _buildOTPStep();
                      case 2:
                        return _buildResetPasswordStep();
                      default:
                        return _buildEmailStep();
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        
        FadeInDown(
          child: Icon(
            Icons.email_outlined,
            size: 80,
            color: AppColors.white,
          ),
        ),
        
        const SizedBox(height: 24),
        
        FadeInDown(
          delay: const Duration(milliseconds: 200),
          child: Text(
            'Masukkan Email',
            textAlign: TextAlign.center,
            style: AppTextStyles.h3.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        FadeInDown(
          delay: const Duration(milliseconds: 300),
          child: Text(
            'Kami akan mengirimkan kode OTP ke email Anda',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.white.withValues(alpha: 0.8),
            ),
          ),
        ),
        
        const SizedBox(height: 40),
        
        FadeInLeft(
          delay: const Duration(milliseconds: 400),
          child: CustomTextField(
            controller: controller.emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(
              Icons.email_outlined,
              color: AppColors.white,
            ),
          ),
        ),
        
        const SizedBox(height: 32),
        
        FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Obx(
            () => CustomButton(
              text: 'Kirim Kode OTP',
              onPressed: controller.sendOTP,
              isLoading: controller.isLoading.value,
              backgroundColor: AppColors.white,
              textColor: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOTPStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        
        FadeInDown(
          child: Icon(
            Icons.lock_clock_outlined,
            size: 80,
            color: AppColors.white,
          ),
        ),
        
        const SizedBox(height: 24),
        
        FadeInDown(
          delay: const Duration(milliseconds: 200),
          child: Text(
            'Masukkan Kode OTP',
            textAlign: TextAlign.center,
            style: AppTextStyles.h3.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        FadeInDown(
          delay: const Duration(milliseconds: 300),
          child: Text(
            'Kode OTP telah dikirim ke ${controller.emailController.text}',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.white.withValues(alpha: 0.8),
            ),
          ),
        ),
        
        const SizedBox(height: 40),
        
        FadeInLeft(
          delay: const Duration(milliseconds: 400),
          child: CustomTextField(
            controller: controller.otpController,
            hintText: 'Kode OTP',
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(
              Icons.pin_outlined,
              color: AppColors.white,
            ),
          ),
        ),
        
        const SizedBox(height: 16),
        
        FadeInRight(
          delay: const Duration(milliseconds: 500),
          child: Center(
            child: TextButton(
              onPressed: controller.sendOTP,
              child: Text(
                'Kirim ulang kode OTP',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 32),
        
        FadeInUp(
          delay: const Duration(milliseconds: 600),
          child: Obx(
            () => CustomButton(
              text: 'Verifikasi',
              onPressed: controller.verifyOTP,
              isLoading: controller.isLoading.value,
              backgroundColor: AppColors.white,
              textColor: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResetPasswordStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 40),
        
        FadeInDown(
          child: Icon(
            Icons.lock_reset,
            size: 80,
            color: AppColors.white,
          ),
        ),
        
        const SizedBox(height: 24),
        
        FadeInDown(
          delay: const Duration(milliseconds: 200),
          child: Text(
            'Buat Kata Sandi Baru',
            textAlign: TextAlign.center,
            style: AppTextStyles.h3.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        FadeInDown(
          delay: const Duration(milliseconds: 300),
          child: Text(
            'Masukkan kata sandi baru Anda',
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.white.withValues(alpha: 0.8),
            ),
          ),
        ),
        
        const SizedBox(height: 40),
        
        FadeInLeft(
          delay: const Duration(milliseconds: 400),
          child: Obx(
            () => CustomTextField(
              controller: controller.newPasswordController,
              hintText: 'Kata Sandi Baru',
              obscureText: !controller.isPasswordVisible.value,
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: AppColors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  controller.isPasswordVisible.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.white,
                ),
                onPressed: controller.togglePasswordVisibility,
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 16),
        
        FadeInLeft(
          delay: const Duration(milliseconds: 500),
          child: Obx(
            () => CustomTextField(
              controller: controller.confirmPasswordController,
              hintText: 'Konfirmasi Kata Sandi Baru',
              obscureText: !controller.isConfirmPasswordVisible.value,
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: AppColors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  controller.isConfirmPasswordVisible.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: AppColors.white,
                ),
                onPressed: controller.toggleConfirmPasswordVisibility,
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 32),
        
        FadeInUp(
          delay: const Duration(milliseconds: 600),
          child: Obx(
            () => CustomButton(
              text: 'Ubah Kata Sandi',
              onPressed: controller.resetPassword,
              isLoading: controller.isLoading.value,
              backgroundColor: AppColors.white,
              textColor: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
