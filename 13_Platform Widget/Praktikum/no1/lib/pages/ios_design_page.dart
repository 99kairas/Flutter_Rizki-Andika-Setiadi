import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSDesignPage extends StatelessWidget {
  const IOSDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.activeBlue),
      debugShowCheckedModeBanner: false,
      home: CupertinoDesign(),
    );
  }
}

class CupertinoDesign extends StatefulWidget {
  CupertinoDesign({super.key});

  @override
  State<CupertinoDesign> createState() => _CupertinoDesignState();
}

class _CupertinoDesignState extends State<CupertinoDesign> {
  final List<Widget> _tabs = [
    const HomeTab(), // see the HomeTab class below
    const SettingTab() // see the SettingsTab class below
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoApp'),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
        ),
        tabBuilder: (context, index) {
          return _tabs[index];
        },
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is CupertinoApp in Home Tab\nby Rizki Andika Setiadi',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: CupertinoColors.inactiveGray,
        ),
      ),
    );
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is CupertinoApp in Settings Tab\nby Rizki Andika Setiadi',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          color: CupertinoColors.inactiveGray,
        ),
      ),
    );
  }
}
