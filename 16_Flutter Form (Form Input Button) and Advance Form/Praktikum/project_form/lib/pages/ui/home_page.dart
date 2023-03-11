import 'package:flutter/material.dart';
import 'package:project_form/pages/widget/contact.dart';
import 'package:project_form/shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomePage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  List<Contact> allContact = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.contact_phone),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Contacts',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
      body: Form(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, right: 40, left: 40),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/icon_phone.png',
                    width: 17.2,
                    height: 22,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    'Create New Contacts',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: regular),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                    style: greyTextStyle,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Divider(thickness: 1),
                  const SizedBox(
                    height: 17,
                  ),
                  TextField(
                    controller: firstNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Insert Your First Name',
                      labelStyle: greyTextStyle,
                      hintStyle: greyTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: barColor,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  TextField(
                    controller: lastNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintText: 'Insert Your Last Name',
                      labelStyle: greyTextStyle,
                      hintStyle: greyTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: barColor,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  TextField(
                    maxLength: 15,
                    controller: contactController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Nomor',
                      prefixText: '+62 ',
                      hintText: '....',
                      labelStyle: greyTextStyle,
                      hintStyle: greyTextStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: barColor,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 94,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            String nameContact =
                                firstNameController.text.trim();
                            String contactNumber =
                                contactController.text.trim();
                            String lastNameContact =
                                lastNameController.text.trim();
                            if (nameContact.isNotEmpty &&
                                lastNameContact.isNotEmpty &&
                                contactNumber.isNotEmpty) {
                              setState(() {
                                firstNameController.text = '';
                                lastNameController.text = '';
                                contactController.text = '';
                                allContact.add(Contact(
                                    firstName: nameContact,
                                    lastName: lastNameContact,
                                    contact: contactNumber));
                              });
                            }
                          },
                          child: const Text(
                            'Submit',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'List Contacts',
                    style: blackTextStyle.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            allContact.isEmpty
                ? Center(
                    child: Text(
                      'Kontak Kosong',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => listContacts(index),
                      itemCount: allContact.length,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget listContacts(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(allContact[index].firstName[0]),
                SizedBox(
                  width: 1,
                ),
                Text(allContact[index].lastName[0]),
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '${allContact[index].firstName} ${allContact[index].lastName}'),
              Text('+62 ${allContact[index].contact}'),
            ],
          ),
          trailing: SizedBox(
            width: 70,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.edit),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
