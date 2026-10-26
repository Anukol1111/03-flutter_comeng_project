import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/hotline.dart';

// สีจาก Figma (wireframe)
class AppColors {
  static const Color appBar = Color(0xFFD9D9D9);
  static const Color cardBorder = Color(0xFFCECECE);
  static const Color logoBorder = Color(0xFF333333);
  static const Color unselected = Color(0xFF9F9F9F);
}

// กดแล้วเปิดหน้าโทรออกของเครื่อง
Future<void> callHotline(Hotline hotline) async {
  await launchUrl(Uri(scheme: 'tel', path: hotline.dialNumber));
}

// เนื้อหาของหน้า SubA–SubD: หัวข้อ + รูป + รายการสายด่วน
class HotlineListView extends StatelessWidget {
  const HotlineListView({
    super.key,
    required this.category,
    required this.banner,
    required this.hotlines,
  });

  final String category;
  final String banner;
  final List<Hotline> hotlines;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
      children: [
        Text(
          'สายด่วน\n$category',
          textAlign: TextAlign.center,
          style: GoogleFonts.kanit(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            height: 1.25,
          ),
        ),
        const SizedBox(height: 25),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              banner,
              width: 184,
              height: 149,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        const SizedBox(height: 30),
        for (final hotline in hotlines) HotlineTile(hotline: hotline),
      ],
    );
  }
}

// การ์ดสายด่วน 1 รายการ
class HotlineTile extends StatelessWidget {
  const HotlineTile({super.key, required this.hotline});

  final Hotline hotline;

  @override
  Widget build(BuildContext context) {
    // Card เป็น Material จึงเห็นเอฟเฟกต์ตอนกด ListTile
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 2,
      shadowColor: const Color(0x33000000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.cardBorder),
      ),
      child: ListTile(
        onTap: () => callHotline(hotline),
        minVerticalPadding: 16,
        contentPadding: const EdgeInsets.only(left: 22, right: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        leading: Container(
          width: 64,
          height: 64,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.logoBorder, width: 1.5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(hotline.image, fit: BoxFit.contain),
          ),
        ),
        title: Text(
          hotline.name,
          style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          hotline.number,
          style: GoogleFonts.kanit(fontSize: 16, color: Colors.black87),
        ),
        trailing: IconButton(
          onPressed: () => callHotline(hotline),
          icon: const Icon(
            Icons.phone_outlined,
            size: 26,
            color: Colors.black87,
          ),
          tooltip: 'โทร ${hotline.number}',
        ),
      ),
    );
  }
}
