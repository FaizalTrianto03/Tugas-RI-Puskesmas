part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  
  static const splash = _Paths.splash;
  
  static const pasienLogin = _Paths.pasienLogin;
  static const pasienRegister = _Paths.pasienRegister;
  static const pasienForgotPassword = _Paths.pasienForgotPassword;
  static const pasienDashboard = _Paths.pasienDashboard;
  static const pasienPengaturan = _Paths.pasienPengaturan;
  
  static const staffSelector = _Paths.staffSelector;
  
  static const adminLogin = _Paths.adminLogin;
  static const adminDashboard = _Paths.adminDashboard;
  static const adminPengaturan = _Paths.adminPengaturan;
  
  static const perawatLogin = _Paths.perawatLogin;
  static const perawatDashboard = _Paths.perawatDashboard;
  static const perawatPengaturan = _Paths.perawatPengaturan;
  
  static const dokterLogin = _Paths.dokterLogin;
  static const dokterDashboard = _Paths.dokterDashboard;
  static const dokterPengaturan = _Paths.dokterPengaturan;
  
  static const apotekerLogin = _Paths.apotekerLogin;
  static const apotekerDashboard = _Paths.apotekerDashboard;
  static const apotekerPengaturan = _Paths.apotekerPengaturan;
  
  static const home = _Paths.home;
}

abstract class _Paths {
  _Paths._();
  
  static const splash = '/splash';
  
  static const pasienLogin = '/pasien/login';
  static const pasienRegister = '/pasien/register';
  static const pasienForgotPassword = '/pasien/forgot-password';
  static const pasienDashboard = '/pasien/dashboard';
  static const pasienPengaturan = '/pasien/pengaturan';
  
  static const staffSelector = '/staff-selector';
  
  static const adminLogin = '/admin/login';
  static const adminDashboard = '/admin/dashboard';
  static const adminPengaturan = '/admin/pengaturan';
  
  static const perawatLogin = '/perawat/login';
  static const perawatDashboard = '/perawat/dashboard';
  static const perawatPengaturan = '/perawat/pengaturan';
  
  static const dokterLogin = '/dokter/login';
  static const dokterDashboard = '/dokter/dashboard';
  static const dokterPengaturan = '/dokter/pengaturan';
  
  static const apotekerLogin = '/apoteker/login';
  static const apotekerDashboard = '/apoteker/dashboard';
  static const apotekerPengaturan = '/apoteker/pengaturan';
  
  static const home = '/home';
}
