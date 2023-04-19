import 'package:dio/dio.dart';
import 'package:project/soal_section19/model/list_food_response.dart';

class FoodAPI {
  Future<List<ListFoodResponse>> getListFood() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods/');

    List<ListFoodResponse> foods = (response.data as List)
        .map(
          (e) => ListFoodResponse(
            id: e["id"],
            name: e["name"],
          ),
        )
        .toList();

    print(response.data);

    return foods;
  }
}
