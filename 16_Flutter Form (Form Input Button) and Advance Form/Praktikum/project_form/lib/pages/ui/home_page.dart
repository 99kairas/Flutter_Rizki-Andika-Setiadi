import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_form/pages/widget/contact.dart';
import 'package:project_form/shared/theme.dart';
import 'package:string_extensions/string_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  List<Contact> allContact = List.empty(growable: true);

  var selectedIndex = -1;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.account_box),
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
        key: formKey,
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
                  const Divider(thickness: 1),
                  const SizedBox(
                    height: 17,
                  ),

                  // FIRST NAME
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'First Name tidak boleh kosong!';
                      }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]')),
                    ],
                    controller: firstNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
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
                  // END OF FIRST NAME

                  // LAST NAME
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Last Name tidak boleh kosong!';
                      }
                      return null;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]')),
                    ],
                    controller: lastNameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
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
                  // END OF LAST NAME

                  // NOMOR HP
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nomor Telp tidak boleh kosong!';
                      } else if (value.length <= 8) {
                        return "Nomor Telp Wajib Lebih dari 8 angka";
                      }
                      return null;
                    },
                    maxLines: 1,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(RegExp('^0+')),
                    ],
                    maxLength: 15,
                    controller: contactController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
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
                  // END OF NOMOR HP

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BUTTON SUBMIT
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
                          onPressed: selectedIndex != -1
                              ? null
                              : () {
                                  if (formKey.currentState!.validate()) {
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
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            content: Row(
                                              children: const [
                                                Expanded(
                                                  child: Text(
                                                    'Contact Berhasil Ditambahkan',
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.green,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                        allContact.add(Contact(
                                            firstName: nameContact,
                                            lastName: lastNameContact,
                                            contact: contactNumber));
                                      });
                                    }
                                  }
                                },
                          child: const Text(
                            'Submit',
                          ),
                        ),
                      ),
                      // END OF BUTTON SUBMIT

                      // BUTTON UPDATE
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
                          onPressed: selectedIndex >= 0
                              ? () {
                                  if (formKey.currentState!.validate()) {
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
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            content: Row(
                                              children: const [
                                                Text(
                                                  'Contact Berhasil Diperbarui',
                                                ),
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.green,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                        allContact[selectedIndex].firstName =
                                            nameContact;
                                        allContact[selectedIndex].lastName =
                                            lastNameContact;
                                        allContact[selectedIndex].contact =
                                            contactNumber;
                                        selectedIndex = -1;
                                      });
                                    }
                                  }
                                }
                              : null,
                          child: const Text(
                            'Update',
                          ),
                        ),
                      ),
                      // END OF BUTTON UPDATE
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
            const SizedBox(
              height: 100,
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
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: index % 2 == 0 ? Colors.cyan : primaryColor,
            foregroundColor: whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(allContact[index].firstName.toTitleCase![0]),
                const SizedBox(
                  width: 1,
                ),
                Text(allContact[index].lastName.toTitleCase![0]),
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${allContact[index].firstName.toTitleCase} ${allContact[index].lastName.toTitleCase}',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                '+62 ${allContact[index].contact}',
                style:
                    greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
              ),
            ],
          ),
          trailing: SizedBox(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    firstNameController.text = allContact[index].firstName;
                    lastNameController.text = allContact[index].lastName;
                    contactController.text = allContact[index].contact;
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Icon(Icons.edit),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allContact.removeAt(index);
                    });
                  },
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
