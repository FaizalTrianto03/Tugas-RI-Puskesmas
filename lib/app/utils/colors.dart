import 'package:flutter/material.dart';

/// Application color palette
/// 
/// Contains all colors used throughout the application
/// based on the Puskesmas theme (medical/healthcare colors)
class AppColors {
  AppColors._();

  // ─── Primary Colors ───
  static const Color primary = Color(0xFF00A86B); // Medical green
  static const Color primaryDark = Color(0xFF008556);
  static const Color primaryLight = Color(0xFF33BA87);

  // ─── Secondary Colors ───
  static const Color secondary = Color(0xFF0891B2); // Cyan
  static const Color secondaryDark = Color(0xFF0E7490);
  static const Color secondaryLight = Color(0xFF06B6D4);

  // ─── Neutral Colors ───
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF9CA3AF);
  static const Color greyLight = Color(0xFFF3F4F6);
  static const Color greyDark = Color(0xFF6B7280);

  // ─── Status Colors ───
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // ─── Text Colors ───
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFF9CA3AF);

  // ─── Background Colors ───
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF3F4F6);

  // ─── Border Colors ───
  static const Color border = Color(0xFFE5E7EB);
  static const Color borderLight = Color(0xFFF3F4F6);
}
