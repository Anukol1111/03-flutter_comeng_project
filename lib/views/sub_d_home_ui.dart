import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน สาธารณูปโภค
class SubDHomeUI extends StatelessWidget {
  const SubDHomeUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'การไฟฟ้านครหลวง',
      number: '1130',
      image: 'assets/images/logos/pub_mea.png',
    ),
    Hotline(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      number: '1129',
      image: 'assets/images/logos/pub_pea.png',
    ),
    Hotline(
      name: 'การไฟฟ้าฝ่ายผลิต',
      number: '1416',
      image: 'assets/images/logos/pub_egat.png',
    ),
    Hotline(
      name: 'การประปานครหลวง',
      number: '1125',
      image: 'assets/images/logos/pub_mwa.png',
    ),
    Hotline(
      name: 'การประปาส่วนภูมิภาค',
      number: '1662',
      image: 'assets/images/logos/pub_pwa.png',
    ),
    Hotline(
      name: 'ทรูมูฟ เอช',
      number: '1242',
      image: 'assets/images/logos/tel_true.png',
    ),
    Hotline(
      name: 'ดีแทค',
      number: '1678',
      image: 'assets/images/logos/tel_dtac.png',
    ),
    Hotline(
      name: 'เอไอเอส',
      number: '1175',
      image: 'assets/images/logos/tel_ais.png',
    ),
    Hotline(
      name: 'ทีโอที',
      number: '1100',
      image: 'assets/images/logos/tel_tot.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'สาธารณูปโภค',
      banner: 'assets/images/banners/banner_pub.png',
      hotlines: hotlines,
    );
  }
}
