import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน อุบัติเหตุ-เหตุฉุกเฉิน
class SubBHomeUI extends StatelessWidget {
  const SubBHomeUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'เหตุด่วนเหตุร้าย',
      number: '191',
      image: 'assets/images/logos/emg_191.png',
    ),
    Hotline(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      number: '1356',
      image: 'assets/images/logos/emg_1356.png',
    ),
    Hotline(
      name: 'หน่วยแพทย์กู้ชีพ',
      number: '1554',
      image: 'assets/images/logos/emg_1554.png',
    ),
    Hotline(
      name: 'ศูนย์เอราวัณ',
      number: '1646',
      image: 'assets/images/logos/emg_1646.png',
    ),
    Hotline(
      name: 'เจ็บป่วยฉุกเฉิน',
      number: '1669',
      image: 'assets/images/logos/emg_1669.png',
    ),
    Hotline(
      name: 'แจ้งไฟไหม้ สัตว์เข้าบ้าน',
      number: '199',
      image: 'assets/images/logos/emg_199.png',
    ),
    Hotline(
      name: 'สายด่วนรถหาย (ตำรวจแห่งชาติ)',
      number: '1192',
      image: 'assets/images/logos/emg_1192.png',
    ),
    Hotline(
      name: 'อุบัติเหตุทางน้ำ',
      number: '1196',
      image: 'assets/images/logos/emg_1196.png',
    ),
    Hotline(
      name: 'แจ้งคนหาย',
      number: '1300',
      image: 'assets/images/logos/emg_1300.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'อุบัติเหตุ-เหตุฉุกเฉิน',
      banner: 'assets/images/banners/banner_emg.png',
      hotlines: hotlines,
    );
  }
}
