import 'package:flutter/material.dart';
import 'package:project/soal_section15/model/contact_model.dart';

class ContactProvider with ChangeNotifier {
  List<ContactModel> _contacts = [];

  List<ContactModel> get getContact {
    return _contacts;
  }

  void addContact(String name, String phone) {
    ContactModel contactModel = ContactModel(nama: name, phone: phone);
    _contacts.add(contactModel);
    notifyListeners();
  }
}
