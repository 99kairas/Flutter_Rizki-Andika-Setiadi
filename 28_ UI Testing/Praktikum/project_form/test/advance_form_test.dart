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
