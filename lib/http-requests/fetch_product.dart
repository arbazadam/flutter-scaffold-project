import 'package:first_app/models/product_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';  

Future<Product> fetchProducts() async {
  final response =
      await http.get('http://localhost:8080/');
      print(response.body);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Product.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load products');
  }
}
