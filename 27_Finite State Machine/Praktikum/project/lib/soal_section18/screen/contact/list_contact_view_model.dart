import 'package:flutter/material.dart';
import 'package:project/soal_section18/model/api/contact_api.dart';
import 'package:project/soal_section18/model/list_contact_response.dart';

enum ListFoodViewState {
  none,
  loading,
  error,
}

class ListContactViewModel with ChangeNotifier {
  List<ListContactResponse> _listContact = [];
  List<ListContactResponse> get listContact => _listContact;
  ListFoodViewState _state = ListFoodViewState.none;
  ListFoodViewState get state => _state;

  changeState(ListFoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getNewListContact() async {
    changeState(ListFoodViewState.loading);

    try {
      final c = await ContactApi().getListContact();
      _listContact = c;
      notifyListeners();
      changeState(ListFoodViewState.none);
    } catch (e) {
      changeState(ListFoodViewState.error);
    }
  }
}
