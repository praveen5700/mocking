import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testing1/models/data_model.dart';

class ApiService {
 static Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}


  
}
