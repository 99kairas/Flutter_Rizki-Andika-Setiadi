import 'package:project/soal_section19/model/api/food_api.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([FoodAPI])
void main() {
  group(
    'FoodAPI',
    () {
      test('get all foods returns data', () async {
        var foods = await FoodAPI().getListFood();

        expect(foods.isNotEmpty, true);
      });
    },
  );
}
