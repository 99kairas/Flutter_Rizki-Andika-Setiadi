import 'package:flutter/material.dart';
import 'package:project/soal_section19/model/api/food_api.dart';
import 'package:project/soal_section19/model/list_food_response.dart';

class ListFoodViewModel with ChangeNotifier {
  List<ListFoodResponse> _listFood = [];
  List<ListFoodResponse> get listFood => _listFood;

  getNewListFood() async {
    final food = await FoodAPI().getListFood();
    
    _listFood = food;
    notifyListeners();
  }
}
