import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/splash_screen_ui.dart';

void main() {
  runApp(const FlutterThaiHotlineApp());
}

class FlutterThaiHotlineApp extends StatelessWidget {
  const FlutterThaiHotlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สายด่วน THAILAND',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2D2A4A)),
        scaffoldBackgroundColor: Colors.white,
        // ฟอนต์หลักของแอป: Kanit
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      // หน้าแรกของแอป
      home: const SplashScreenUI(),
    );
  }
}
