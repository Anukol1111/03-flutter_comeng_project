import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน การเดินทาง
class SubAHomeUI extends StatelessWidget {
  const SubAHomeUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'ข้อมูลจราจร',
      number: '1197',
      image: 'assets/images/logos/travel_1197.png',
    ),
    Hotline(
      name: 'ตำรวจทางหลวง',
      number: '1193',
      image: 'assets/images/logos/travel_1193.png',
    ),
    Hotline(
      name: 'ตำรวจท่องเที่ยว',
      number: '1155',
      image: 'assets/images/logos/travel_1155.png',
    ),
    Hotline(
      name: 'เส้นทางบนทางด่วน',
      number: '1543',
      image: 'assets/images/logos/travel_1543.png',
    ),
    Hotline(
      name: 'ขสมก.',
      number: '1348',
      image: 'assets/images/logos/travel_1348.png',
    ),
    Hotline(
      name: 'กรมทางหลวงชนบท',
      number: '1146',
      image: 'assets/images/logos/travel_1146.png',
    ),
    Hotline(
      name: 'บขส.',
      number: '1490',
      image: 'assets/images/logos/travel_1490.png',
    ),
    Hotline(
      name: 'กรมทางหลวง',
      number: '1586',
      image: 'assets/images/logos/travel_1586.png',
    ),
    Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      number: '1690',
      image: 'assets/images/logos/travel_1690.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'การเดินทาง',
      banner: 'assets/images/banners/banner_travel.png',
      hotlines: hotlines,
    );
  }
}
