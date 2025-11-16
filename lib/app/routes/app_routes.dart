part of 'app_pages.dart';

/// Application route names
/// 
/// This class contains all route names used in the application.
/// Use these constants with GetX navigation: Get.toNamed(Routes.HOME)
abstract class Routes {
  Routes._();
  
  // Initial route
  static const SPLASH = '/';
  static const HOME = _Paths.HOME;
  
  // Auth routes will be added in Week 2
  // Dashboard routes will be added in Week 2
  // Other feature routes will be added progressively
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
}
