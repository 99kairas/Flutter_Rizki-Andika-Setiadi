// To parse this JSON data, do
//
//     final listFoodResponse = listFoodResponseFromJson(jsonString);

import 'dart:convert';

List<ListFoodResponse> listFoodResponseFromJson(String str) => List<ListFoodResponse>.from(json.decode(str).map((x) => ListFoodResponse.fromJson(x)));

String listFoodResponseToJson(List<ListFoodResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListFoodResponse {
    ListFoodResponse({
        required this.id,
        required this.name,
    });

    int id;
    String name;

    factory ListFoodResponse.fromJson(Map<String, dynamic> json) => ListFoodResponse(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
