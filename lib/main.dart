import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Week 2/3: Dummy mode tanpa Firebase & dotenv

  runApp(
    GetMaterialApp(
      title: "Puskesmas App",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
