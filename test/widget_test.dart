import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_comeng_project/main.dart';
import 'package:flutter_comeng_project/views/sub_a_home_ui.dart';
import 'package:flutter_comeng_project/views/sub_b_home_ui.dart';
import 'package:flutter_comeng_project/views/sub_c_home_ui.dart';
import 'package:flutter_comeng_project/views/sub_d_home_ui.dart';

void main() {
  // ไม่ให้ google_fonts โหลดฟอนต์จากอินเทอร์เน็ตตอนรันเทสต์
  setUpAll(() => GoogleFonts.config.allowRuntimeFetching = false);

  // ขนาดจอ iPhone 16 Pro Max (440 x 956)
  void useIphone16ProMax(WidgetTester tester) {
    tester.view.physicalSize = const Size(1320, 2868);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
  }

  testWidgets('Splash goes to Home, tabs switch, info opens About', (
    tester,
  ) async {
    useIphone16ProMax(tester);
    await tester.pumpWidget(const FlutterThaiHotlineApp());

    expect(find.text('THAI HOTLINE APP\nสายด่วน'), findsOneWidget);

    // หลัง 3 วินาทีไปหน้า HomeUI
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('สายด่วน\nการเดินทาง'), findsOneWidget);

    await tester.tap(find.text('อุบัติเหตุ-เหตุฉุกเฉิน'));
    await tester.pumpAndSettle();
    expect(find.text('สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน'), findsOneWidget);

    await tester.tap(find.text('ธนาคาร'));
    await tester.pumpAndSettle();
    expect(find.text('สายด่วน\nธนาคาร'), findsOneWidget);

    await tester.tap(find.text('สาธารณูปโภค'));
    await tester.pumpAndSettle();
    expect(find.text('สายด่วน\nสาธารณูปโภค'), findsOneWidget);

    await tester.tap(find.byTooltip('ผู้จัดทำ'));
    await tester.pumpAndSettle();
    expect(find.text('มหาวิทยาลัยเอเชียอาคเนย์'), findsOneWidget);
  });

  test('Every hotline has a number and an existing logo file', () {
    final all = [
      ...SubAHomeUI.hotlines,
      ...SubBHomeUI.hotlines,
      ...SubCHomeUI.hotlines,
      ...SubDHomeUI.hotlines,
    ];
    expect(all.length, 43);
    for (final h in all) {
      expect(File(h.image).existsSync(), isTrue, reason: h.image);
      expect(
        RegExp(r'^\d{3,10}$').hasMatch(h.dialNumber),
        isTrue,
        reason: h.number,
      );
    }
  });
}
