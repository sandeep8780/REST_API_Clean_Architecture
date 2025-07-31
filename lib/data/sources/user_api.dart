import 'dart:convert';
import 'package:http/http.dart' as http;
import '../ Model/user_model.dart';
import '../models/user_model.dart';

class UserApi {
  Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    final List body = json.decode(response.body);
    return body.map((e) => UserModel.fromJson(e)).toList();
  }
}
