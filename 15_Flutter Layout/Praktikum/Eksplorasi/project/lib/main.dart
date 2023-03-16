import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: FlutterApp(),
    );
  }
}

class FlutterApp extends StatelessWidget {
  final List<String> _listData = [
    'Learn Flutter',
    'Learn ReactJS',
    'Learn VueJS',
    'Learn Tailwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learn Digital Marketing',
    'Rizki Andika Setiadi Flutter C'
  ];
  FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF6200EE),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            )
          ],
          title: Text(
            'My Flutter App',
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.fromLTRB(15, 15, 0, 10),
                child: Text(
                  _listData[index],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800]),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: _listData.length),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0XFF03DAC5),
          onPressed: () {},
          child: Text(
            '+',
            style: TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {},
          backgroundColor: Color(0XFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_rounded,
                ),
                label: 'Information'),
          ],
        ),
      ),
    );
  }
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
