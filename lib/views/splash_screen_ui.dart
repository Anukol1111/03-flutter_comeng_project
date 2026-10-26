import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_ui.dart';

// หน้าแรก: แสดงโลโก้ 3 วินาที แล้วไปหน้า HomeUI
class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeUI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/app_logo.png', width: 260, height: 260),
            const SizedBox(height: 50),
            Text(
              'THAI HOTLINE APP\nสายด่วน',
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
