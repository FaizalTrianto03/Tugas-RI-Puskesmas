import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/colors.dart';
import 'firebase_options.dart';

/// Main entry point of the application
/// 
/// Week 1 Setup:
/// - Flutter initialization
/// - Firebase initialization with dotenv
/// - GetX routing setup
/// - Theme configuration
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables
  await dotenv.load(fileName: ".env");
  
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Puskesmas App',
      debugShowCheckedModeBanner: false,
      
      // Theme configuration
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      
      // GetX routing
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
