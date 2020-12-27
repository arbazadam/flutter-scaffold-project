import 'dart:async';
import 'dart:convert';
import 'package:first_app/models/product_model.dart';
import 'package:http/http.dart' as http;
class Products
{
  final int product_id;
  final String product_name;

  Products({this.product_id,this.product_name});

  static Future<List<Products>> hitTheApi() async{
    final response=await http.get('http://10.0.2.2:8080/getAll');
    if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
     Products.fromJson(json.decode(response.body));
     return List.generate(response.body.length, (index) => Products());
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
    //print('the response is ${response.body}');
    
  }

  String toString()
  {
    return '$product_id $product_name';
  }

  static Future<Products> getOne() async{
    final response=await http.get('http://10.0.2.2:8080/');
    if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
     Products p= Products.fromJson(json.decode(response.body));
     print(p);
     return p;
     
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
    //print('the response is ${response.body}');
    
  }
  
  
 static postToApi() async
  {
    Map<String, String> headers = {"Content-type": "application/json"};
  String json = '{"product_id": 5, "product_name": "salt"}';
    await http.post('http://10.0.2.2:8080/products',headers:headers,body: json);
    print('data posted');
  }

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      product_id: json['id'],
      product_name: json['product_name'],
    );
  }
}