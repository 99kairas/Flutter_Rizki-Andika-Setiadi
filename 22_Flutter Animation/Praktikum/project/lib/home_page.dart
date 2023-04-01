import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Widgets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Section 16'),
            subtitle: const Text('11. Soal Form & Advance Form Input'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, '/section-11');
            },
          ),
          ListTile(
            title: const Text('Section 18'),
            subtitle:
                const Text('12. Soal Assets, Dialog Bottomsheet, Navigation'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, '/section-12');
            },
          ),
          ListTile(
            title: const Text('Code Competence 1'),
            subtitle: const Text('Flutter Weekly Task 1'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Section 22'),
            subtitle: const Text('15. Soal Flutter Animation'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              Navigator.pushNamed(context, '/section-15');
            },
          ),
        ],
      ),
    );
  }
}
