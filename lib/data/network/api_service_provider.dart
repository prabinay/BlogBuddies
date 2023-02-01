import 'dart:convert';

 
import 'package:http/http.dart' as http;

import '../../app/app_constants.dart';
import '../../models/post.dart';

class ApiServiceProvider {
  Future<List<Posts>> getPosts() async {
    var url = Uri.parse('${baseUrl}products');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Posts.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
