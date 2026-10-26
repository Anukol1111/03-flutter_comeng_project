import 'package:flutter/material.dart';

import '../models/hotline.dart';
import '../widgets/hotline_widgets.dart';

// สายด่วน ธนาคาร
class SubCHomeUI extends StatelessWidget {
  const SubCHomeUI({super.key});

  static const List<Hotline> hotlines = [
    Hotline(
      name: 'ธนาคารกรุงไทย',
      number: '0-2111-1111',
      image: 'assets/images/logos/bank_ktb.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      number: '1333',
      image: 'assets/images/logos/bank_bbl.png',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรีอยุธยา',
      number: '1572',
      image: 'assets/images/logos/bank_bay.png',
    ),
    Hotline(
      name: 'ธนาคารกสิกรไทย',
      number: '0-2888-8888',
      image: 'assets/images/logos/bank_kbank.png',
    ),
    Hotline(
      name: 'ธนาคารไทยพาณิชย์',
      number: '0-2777-7777',
      image: 'assets/images/logos/bank_scb.png',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      number: '1115',
      image: 'assets/images/logos/bank_gsb.png',
    ),
    Hotline(
      name: 'ธนาคารทีเอ็มบีธนชาต',
      number: '1428',
      image: 'assets/images/logos/bank_ttb.png',
    ),
    Hotline(
      name: 'ธนาคารซิตี้แบงก์',
      number: '1588',
      image: 'assets/images/logos/bank_citi.png',
    ),
    Hotline(
      name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
      number: '1327',
      image: 'assets/images/logos/bank_lh.png',
    ),
    Hotline(
      name: 'ธนาคารอาคารสงเคราะห์',
      number: '0-2645-9000',
      image: 'assets/images/logos/bank_ghb.png',
    ),
    Hotline(
      name: 'ธนาคารเกียรตินาคินภัทร',
      number: '0-2165-5555',
      image: 'assets/images/logos/bank_kkp.png',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      number: '0-2697-5454',
      image: 'assets/images/logos/bank_tcr.png',
    ),
    Hotline(
      name: 'ธนาคารยูโอบี',
      number: '0-2285-1555',
      image: 'assets/images/logos/bank_uob.png',
    ),
    Hotline(
      name: 'ธนาคารทิสโก้',
      number: '0-2633-6000',
      image: 'assets/images/logos/bank_tisco.png',
    ),
    Hotline(
      name: 'ธนาคารอิสลามแห่งประเทศไทย',
      number: '0-2204-2766',
      image: 'assets/images/logos/bank_ibank.png',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบี ไทย',
      number: '0-2626-7777',
      image: 'assets/images/logos/bank_cimb.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const HotlineListView(
      category: 'ธนาคาร',
      banner: 'assets/images/banners/banner_bank.png',
      hotlines: hotlines,
    );
  }
}
