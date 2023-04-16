import 'package:flutter/material.dart';
import 'package:project/soal_section18/model/api/contact_api.dart';
import 'package:project/soal_section18/model/list_contact_response.dart';

class ListContactViewModel with ChangeNotifier {
  List<ListContactResponse> _listContact = [];
  List<ListContactResponse> get listContact => _listContact;


  getNewListContact() async {
    final c = await ContactApi().getListContact();
    _listContact = c;
    notifyListeners();
  }
}