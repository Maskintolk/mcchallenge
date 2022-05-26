import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:challenge1/model/user.dart';

class UserService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    var response = await get(_baseUrl);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json.map<User>((user) => User.fromMap(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<http.Response> get(String endPoint) async {
    var client = http.Client();
    var url = Uri.parse(endPoint);
    var response = await client.get(url);
    return response;
  }
}
