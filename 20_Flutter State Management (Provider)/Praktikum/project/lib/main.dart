import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/left_to_right_transition.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:project/home_page.dart';
import 'package:project/soal_section11/pages/ui/home_page.dart';
import 'package:project/soal_section12/details_page.dart';
import 'package:project/soal_section12/home_section12.dart';
import 'package:project/soal_section12/provider/image_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<PhotoProvider>(create: (_) => PhotoProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/details-page': (context) => DetailsPage(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/section-11':
            return PageAnimationTransition(
                page: const HomeSection11(),
                pageAnimationType: RightToLeftFadedTransition());
          case '/section-12':
            return PageAnimationTransition(
                page: const HomeSection12(),
                pageAnimationType: RightToLeftTransition());
          // case '/details-page':
          //   final args = settings.arguments as DetailsArgument;
          //   return PageAnimationTransition(
          //       page: const DetailsPage(),
          //       pageAnimationType: RightToLeftTransition());
          default:
            return null;
        }
      },
    );
  }
}
