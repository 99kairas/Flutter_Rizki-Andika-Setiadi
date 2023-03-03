import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
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
                title: Text(
                  'Home',
                ),
                leading: Icon(
                  Icons.home,
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'Settings',
                ),
                leading: Icon(
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
                title: Text(
                  'No 1',
                ),
                leading: Icon(
                  Icons.one_k,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          WidgetTheme(
            name: 'Leanne Graham',
            inisial: 'L',
            handphone: '12345-67890',
            color: Colors.red,
          ),
          WidgetTheme(
            name: 'Ervin Howell',
            inisial: 'E',
            handphone: '010-692-6593 x09125',
            color: Colors.green,
          ),
          WidgetTheme(
            name: 'Clementine Bauch',
            inisial: 'C',
            handphone: '1-463-123-4447',
            color: Colors.red,
          ),
          WidgetTheme(
            name: 'Patricia Lebsack',
            inisial: 'P',
            handphone: '493-170-9623 x156',
            color: Colors.red,
          ),
          WidgetTheme(
            name: 'Chelsey Dietrich',
            inisial: 'C',
            handphone: '(254)954-1289)',
            color: Colors.red,
          ),
          WidgetTheme(
            name: 'Mrs. Dennis Schulist',
            inisial: 'M',
            handphone: '1-477-935-8478 x6430',
            color: Colors.red,
          ),
          WidgetTheme(
            name: 'Kurtis Weissnat',
            inisial: 'K',
            handphone: '210.067.6132',
            color: Colors.green,
          ),
          WidgetTheme(
            name: 'Rizki Andika Setiadi',
            inisial: 'R',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
          WidgetTheme(
            name: 'Kai',
            inisial: 'K',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
          WidgetTheme(
            name: 'Ras',
            inisial: 'R',
            handphone: '+62 813 2241 5894',
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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

class WidgetTheme extends StatelessWidget {
  final String? name;
  final String? handphone;
  final String? inisial;
  final Color? color;
  const WidgetTheme({
    super.key,
    this.name,
    this.handphone,
    this.inisial,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(
              right: 16,
              left: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: color,
            ),
            child: Center(
                child: Text(
              inisial!,
              style: TextStyle(fontSize: 30),
            )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  handphone!,
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class No1 extends StatelessWidget {
  const No1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Material App',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Material App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Dibuat oleh Rizki Andika Setiadi',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
      ),
    );
  }
}

class CupertinoDesign extends StatelessWidget {
  const CupertinoDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp();
  }
}
