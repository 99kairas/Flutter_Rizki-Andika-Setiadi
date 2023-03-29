import 'package:flutter/material.dart';
import 'package:project/home_page.dart';
import 'package:project/soal_section11/pages/ui/home_page.dart';
import 'package:project/soal_section12/home_section12.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/section-11':(context) => const HomeSection11(),
        '/section-12':(context) => HomeSection12(),
      },
    );
  }
}
