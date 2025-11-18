import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../modules/splash/views/splash_view.dart';
import '../modules/staff_selector/views/staff_selector_view.dart';
import '../modules/pasien/dashboard/views/pasien_dashboard_view.dart';
import '../modules/dokter/dashboard/views/dokter_dashboard_view.dart';
import '../modules/perawat/dashboard/views/perawat_dashboard_view.dart';
import '../modules/apoteker/dashboard/views/apoteker_dashboard_view.dart';
import '../modules/admin/dashboard/views/admin_dashboard_view.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'splash',
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashView(),
        ),
      ),
      GoRoute(
        path: '/staff-selector',
        name: 'staffSelector',
        pageBuilder: (context, state) => const MaterialPage(
          child: StaffSelectorView(),
        ),
      ),
      GoRoute(
        path: '/pasien/dashboard',
        name: 'pasienDashboard',
        pageBuilder: (context, state) => const MaterialPage(
          child: PasienDashboardView(),
        ),
      ),
      GoRoute(
        path: '/dokter/dashboard',
        name: 'dokterDashboard',
        pageBuilder: (context, state) => const MaterialPage(
          child: DokterDashboardView(),
        ),
      ),
      GoRoute(
        path: '/perawat/dashboard',
        name: 'perawatDashboard',
        pageBuilder: (context, state) => const MaterialPage(
          child: PerawatDashboardView(),
        ),
      ),
      GoRoute(
        path: '/apoteker/dashboard',
        name: 'apotekerDashboard',
        pageBuilder: (context, state) => const MaterialPage(
          child: ApotekerDashboardView(),
        ),
      ),
      GoRoute(
        path: '/admin/dashboard',
        name: 'adminDashboard',
        pageBuilder: (context, state) => const MaterialPage(
          child: AdminDashboardView(),
        ),
      ),
    ],
  );
}
