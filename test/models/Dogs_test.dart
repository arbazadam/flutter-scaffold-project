import 'package:first_app/models/Dogs.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var dogs = Dogs();
  group('testing in group', () {
    test('testing the add method', () {
      dogs.addDogs(Dogs(id: 3, name: 'roger'));
      expect(dogs.dogs.length, 1);
    });

    test('testing even list',(){
      var list=[1];
      expect(Dogs.evenList(list).length,0);
      expect(Dogs.evenList([]),null);
    });
  });
}
