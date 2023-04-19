# Rangkuman Materi UI Testing

## Apa itu UI Testing? <br>
UI Testing adalah pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. Dalam Flutter, UI Testing sering disebut widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis. <br>

### Keuntungan UI Testing <br>
1. Memastikan seluruh interaksi dapat diterima dengan baik. <br>
2. Memastikan seluruh widget memberi tampilan yang sesuai. <br>
3. Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget. <br>

Jika ingin melakukan UI Testing pada Flutter, instalasi package Testing (flutter_test: ) di dev_dependencies di pubspec.yaml terlebih dahulu. <br>

### Penulisan Script Testing <br>
1. Dilakukan pada folder test. <br>
2. Nama file harus diikuti _test.dart, contohnya contact_test.dart, advance_form_test.dart dan lain lain. <br>

### Contoh Penggunaan Testing <br>

```
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_form/pages/ui/advance_form_page.dart';
import 'package:project_form/pages/ui/home_page.dart';

void main() {
  group('pages', () {
    testWidgets('Judul Halaman harus Interactive Widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: AdvanceForm(),
      ));

      expect(find.text('Interactive Widgets'), findsOneWidget);
    });

    testWidgets('Judul Halaman harus Contacts', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HomePage(),
      ));

      expect(find.text('Contacts'), findsOneWidget);
    });
    // testWidgets('Test halaman yang belum ada', (WidgetTester tester) async {
    //   await tester.pumpWidget(const MaterialApp(
    //     home: NullPage(),
    //   ));

    //   expect(find.text('Null Page'), findsOneWidget);
    // });
  });
}
```
