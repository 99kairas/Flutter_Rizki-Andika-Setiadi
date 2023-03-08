import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/ui/widgets/widget_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.perm_contact_cal),
              SizedBox(
                width: 5,
              ),
              Text(
                'Contacts',
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            ],
          ),
          backgroundColor: Color(0xff6750A4),
        ),
        backgroundColor: Color(0XFFFFFFFF),
        body: ListView(
          children: [
            // CREATE NEW CONTACTS
            Container(
              margin: EdgeInsets.only(top: 81, left: 40, right: 40),
              child: Column(
                children: [
                  Icon(Icons.phone_android),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'Create New Contacts',
                    style: GoogleFonts.roboto(
                        fontSize: 24.0, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or '
                    'prompt for a decision to be made.',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Color(0XFF49454F),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Divider(
                    height: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            // INPUT NAME DAN NOMOR

            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Name',
                      labelStyle: GoogleFonts.roboto(fontSize: 15),
                      hintText: 'Insert Your Name',
                      hintStyle: GoogleFonts.roboto(fontSize: 15),
                      fillColor: Color(0xffE7E0EC),
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: 'Nomor',
                      labelStyle: GoogleFonts.roboto(fontSize: 15),
                      prefixText: '+62 ',
                      hintText: '. . . . ',
                      fillColor: Color(0xffE7E0EC),
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 94,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xff6750A4),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 49,
                  ),
                ],
              ),
            ),

            // LIST CONTACTS

            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'List Contacts',
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  WidgetContact(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
