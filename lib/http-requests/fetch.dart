import './Album.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';  //This package is used to convert the json response body to the custom album object.

// The http.get() method returns a Future that contains a Response.

// Future is a core Dart class for working with async operations. A Future object represents a potential value or error that will be available at some time in the future.
// The http.Response class contains the data received from a successful http call.

//The http.Response class is actually difficult to work with, so we convert it into a custom object.
Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
