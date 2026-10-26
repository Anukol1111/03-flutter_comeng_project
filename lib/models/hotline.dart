// ข้อมูลสายด่วน 1 รายการ
class Hotline {
  const Hotline({
    required this.name,
    required this.number,
    required this.image,
  });

  final String name; // ชื่อหน่วยงาน
  final String number; // เบอร์ที่แสดง เช่น 1197 หรือ 0-2111-1111
  final String image; // โลโก้ใน assets/images/logos

  // เบอร์ที่ใช้โทร (ตัดขีดออก)
  String get dialNumber => number.replaceAll('-', '');
}
