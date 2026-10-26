import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/hotline_widgets.dart';

// หน้าผู้จัดทำ
class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    final infoStyle = GoogleFonts.kanit(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              Text(
                'ผู้จัดทำ',
                style: GoogleFonts.kanit(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/logo_sau.png',
                width: 130,
                height: 130,
              ),
              const SizedBox(height: 25),
              Text('มหาวิทยาลัยเอเชียอาคเนย์', style: infoStyle),
              const SizedBox(height: 60),
              // รูปนักศึกษา (ยังเป็นรูปแทน)
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFBDBDBD),
                    width: 1.5,
                  ),
                ),
                child: const Icon(
                  Icons.person_outline,
                  size: 100,
                  color: Color(0xFFBDBDBD),
                ),
              ),
              const SizedBox(height: 30),
              // ข้อมูลนักศึกษา: รหัส / ชื่อ-สกุล / อีเมล์ / สาขาวิชา / คณะ
              Text('S6819H10017', style: infoStyle),
              const SizedBox(height: 12),
              Text('Anukol Seeprai', style: infoStyle),
              const SizedBox(height: 12),
              Text('s6819h10017@sau.ac.th', style: infoStyle),
              const SizedBox(height: 12),
              Text('วิศวกรรมคอมพิวเตอร์', style: infoStyle),
              const SizedBox(height: 12),
              Text('วิศวกรรม', style: infoStyle),
            ],
          ),
        ),
      ),
    );
  }
}
