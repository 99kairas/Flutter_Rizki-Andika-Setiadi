import 'package:flutter/material.dart';

import '../main.dart';
import '../ui/contact_data.dart';
import 'ios_design_page.dart';
import 'no1_page.dart';

class AndroidDesignPage extends StatefulWidget {
  const AndroidDesignPage({super.key});

  @override
  State<AndroidDesignPage> createState() => _AndroidDesignPageState();
}

class _AndroidDesignPageState extends State<AndroidDesignPage> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.home),
            SizedBox(
              width: 5,
            ),
            Text(
              'Home',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: GestureDetector(
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                title: const Text(
                  'Home',
                ),
                leading: Icon(
                  Icons.home,
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Settings',
                ),
                leading: const Icon(
                  Icons.settings,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => No1(),
                      ));
                },
                title: const Text(
                  'No 1',
                ),
                leading: const Icon(
                  Icons.one_k,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IOSDesignPage(),
                      ));
                },
                title: const Text(
                  'Cupertino Design',
                ),
                leading: const Icon(
                  Icons.phone_iphone,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          WidgetContact(
            name: 'Leanne Graham',
            inisial: 'L',
            handphone: '12345-67890',
            color: Colors.red,
          ),
          WidgetContact(
            name: 'Ervin Howell',
            inisial: 'E',
            handphone: '010-692-6593 x09125',
            color: Colors.green,
          ),
          WidgetContact(
            name: 'Clementine Bauch',
            inisial: 'C',
            handphone: '1-463-123-4447',
            color: Colors.red,
          ),
          WidgetContact(
            name: 'Patricia Lebsack',
            inisial: 'P',
            handphone: '493-170-9623 x156',
            color: Colors.red,
          ),
          WidgetContact(
            name: 'Chelsey Dietrich',
            inisial: 'C',
            handphone: '(254)954-1289)',
            color: Colors.red,
          ),
          WidgetContact(
            name: 'Mrs. Dennis Schulist',
            inisial: 'M',
            handphone: '1-477-935-8478 x6430',
            color: Colors.red,
          ),
          WidgetContact(
            name: 'Kurtis Weissnat',
            inisial: 'K',
            handphone: '210.067.6132',
            color: Colors.green,
          ),
          WidgetContact(
            name: 'Rizki Andika Setiadi',
            inisial: 'R',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
          WidgetContact(
            name: 'Kai',
            inisial: 'K',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
          WidgetContact(
            name: 'Ras',
            inisial: 'R',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: (int value) {
          switch (value) {
            case 0:
              if (_selectedIndex == value) {
                _homeController.animateTo(0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }
              break;
          }
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
