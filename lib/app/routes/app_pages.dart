import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

/// Application pages configuration
/// 
/// This class contains all GetX page definitions and their bindings.
/// Pages will be added progressively during development.
class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    // Routes will be added progressively:
    // Week 1: Basic setup
    // Week 2: Auth pages, Dashboard pages
    // Week 3+: Feature pages
  ];
}
