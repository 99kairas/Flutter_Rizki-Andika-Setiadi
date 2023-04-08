import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageSection16 extends StatefulWidget {
  const ProfilePageSection16({super.key});

  @override
  State<ProfilePageSection16> createState() => _ProfilePageSection16State();
}

class _ProfilePageSection16State extends State<ProfilePageSection16> {
  late SharedPreferences loginData;
  String _username = '';
  String _email = '';

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      _username = loginData.getString('username').toString();
      _email = loginData.getString('email').toString();
    });
  }

  @override
  void initState() {
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page Section 16'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text('Username : '),
                Text(
                  _username,
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Email : '),
                Text(
                  _email,
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                loginData.setBool('login', true);
                loginData.setString('username', _username);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/section-16', (route) => false);
              },
              child: const Text('LOGOUT'),
            ),
          ],
        ),
      ),
    );
  }
}
