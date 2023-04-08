import 'package:flutter/material.dart';
import 'package:project/soal_section12/model/foto_model.dart';

class PhotoProvider with ChangeNotifier {
  final List<FotoModel> _items = [
    FotoModel(
      name: 'Github',
      image:
          'https://play-lh.googleusercontent.com/PCpXdqvUWfCW1mXhH1Y_98yBpgsWxuTSTofy3NGMo9yBTATDyzVkqU580bfSln50bFU',
    ),
    FotoModel(
      name: 'Instagram',
      image:
          'https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM',
    ),
    FotoModel(
      name: 'Twitter',
      image:
          'https://pbs.twimg.com/profile_images/1488548719062654976/u6qfBBkF_400x400.jpg',
    ),
    FotoModel(
      name: 'Facebook',
      image:
          'https://cdn2.downdetector.com/static/uploads/logo/FB-f-Logo__blue_512.png',
    ),
    FotoModel(
      name: 'Gojek',
      image:
          'https://static.vecteezy.com/system/resources/previews/011/711/028/non_2x/gojek-element-symbol-gojek-logo-gojek-icon-free-vector.jpg',
    ),
    FotoModel(
      name: 'Linkedin',
      image:
          'https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw',
    ),
  ];

  List<FotoModel> get items => _items;
  @override
  void notifyListeners() {
    items;
    super.notifyListeners();
  }
}
