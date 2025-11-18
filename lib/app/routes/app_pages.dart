import 'package:get/get.dart';

import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

import '../modules/pasien/auth/login/bindings/pasien_login_binding.dart';
import '../modules/pasien/auth/login/views/pasien_login_view.dart';
import '../modules/pasien/auth/register/bindings/pasien_register_binding.dart';
import '../modules/pasien/auth/register/views/pasien_register_view.dart';
import '../modules/pasien/auth/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/pasien/auth/forgot_password/views/forgot_password_view.dart';
import '../modules/pasien/dashboard/bindings/pasien_dashboard_binding.dart';
import '../modules/pasien/dashboard/views/pasien_dashboard_view.dart';
import '../modules/pasien/pengaturan/bindings/pasien_pengaturan_binding.dart';
import '../modules/pasien/pengaturan/views/pasien_pengaturan_view.dart';

import '../modules/staff_selector/bindings/staff_selector_binding.dart';
import '../modules/staff_selector/views/staff_selector_view.dart';

import '../modules/dokter/auth/login/bindings/dokter_login_binding.dart';
import '../modules/dokter/auth/login/views/dokter_login_view.dart';
import '../modules/dokter/dashboard/bindings/dokter_dashboard_binding.dart';
import '../modules/dokter/dashboard/views/dokter_dashboard_view.dart';
import '../modules/dokter/pengaturan/bindings/dokter_pengaturan_binding.dart';
import '../modules/dokter/pengaturan/views/dokter_pengaturan_view.dart';

import '../modules/perawat/auth/login/bindings/perawat_login_binding.dart';
import '../modules/perawat/auth/login/views/perawat_login_view.dart';
import '../modules/perawat/dashboard/bindings/perawat_dashboard_binding.dart';
import '../modules/perawat/dashboard/views/perawat_dashboard_view.dart';
import '../modules/perawat/pengaturan/bindings/perawat_pengaturan_binding.dart';
import '../modules/perawat/pengaturan/views/perawat_pengaturan_view.dart';

import '../modules/apoteker/auth/login/bindings/apoteker_login_binding.dart';
import '../modules/apoteker/auth/login/views/apoteker_login_view.dart';
import '../modules/apoteker/dashboard/bindings/apoteker_dashboard_binding.dart';
import '../modules/apoteker/dashboard/views/apoteker_dashboard_view.dart';
import '../modules/apoteker/pengaturan/bindings/apoteker_pengaturan_binding.dart';
import '../modules/apoteker/pengaturan/views/apoteker_pengaturan_view.dart';

import '../modules/admin/auth/login/bindings/admin_login_binding.dart';
import '../modules/admin/auth/login/views/admin_login_view.dart';
import '../modules/admin/dashboard/bindings/admin_dashboard_binding.dart';
import '../modules/admin/dashboard/views/admin_dashboard_view.dart';
import '../modules/admin/pengaturan/bindings/admin_pengaturan_binding.dart';
import '../modules/admin/pengaturan/views/admin_pengaturan_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    
    GetPage(
      name: _Paths.pasienLogin,
      page: () => const PasienLoginView(),
      binding: PasienLoginBinding(),
    ),
    GetPage(
      name: _Paths.pasienRegister,
      page: () => const PasienRegisterView(),
      binding: PasienRegisterBinding(),
    ),
    GetPage(
      name: _Paths.pasienForgotPassword,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.pasienDashboard,
      page: () => const PasienDashboardView(),
      binding: PasienDashboardBinding(),
    ),
    GetPage(
      name: _Paths.pasienPengaturan,
      page: () => const PasienPengaturanView(),
      binding: PasienPengaturanBinding(),
    ),
    
    GetPage(
      name: _Paths.staffSelector,
      page: () => const StaffSelectorView(),
      binding: StaffSelectorBinding(),
    ),
    
    GetPage(
      name: _Paths.dokterLogin,
      page: () => const DokterLoginView(),
      binding: DokterLoginBinding(),
    ),
    GetPage(
      name: _Paths.dokterDashboard,
      page: () => const DokterDashboardView(),
      binding: DokterDashboardBinding(),
    ),
    GetPage(
      name: _Paths.dokterPengaturan,
      page: () => const DokterPengaturanView(),
      binding: DokterPengaturanBinding(),
    ),
    
    GetPage(
      name: _Paths.perawatLogin,
      page: () => const PerawatLoginView(),
      binding: PerawatLoginBinding(),
    ),
    GetPage(
      name: _Paths.perawatDashboard,
      page: () => const PerawatDashboardView(),
      binding: PerawatDashboardBinding(),
    ),
    GetPage(
      name: _Paths.perawatPengaturan,
      page: () => const PerawatPengaturanView(),
      binding: PerawatPengaturanBinding(),
    ),
    
    GetPage(
      name: _Paths.apotekerLogin,
      page: () => const ApotekerLoginView(),
      binding: ApotekerLoginBinding(),
    ),
    GetPage(
      name: _Paths.apotekerDashboard,
      page: () => const ApotekerDashboardView(),
      binding: ApotekerDashboardBinding(),
    ),
    GetPage(
      name: _Paths.apotekerPengaturan,
      page: () => const ApotekerPengaturanView(),
      binding: ApotekerPengaturanBinding(),
    ),
    
    GetPage(
      name: _Paths.adminLogin,
      page: () => const AdminLoginView(),
      binding: AdminLoginBinding(),
    ),
    GetPage(
      name: _Paths.adminDashboard,
      page: () => const AdminDashboardView(),
      binding: AdminDashboardBinding(),
    ),
    GetPage(
      name: _Paths.adminPengaturan,
      page: () => const AdminPengaturanView(),
      binding: AdminPengaturanBinding(),
    ),
    
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
