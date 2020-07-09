import 'dart:convert';

import 'package:http/http.dart';
import 'package:user_list/src/models/user.dart';

class UserApiProvider {
  Client client = Client();
  
  Future<UserModel> fetchUserList() async {
    final response = await client.get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load users');
    }
  }

}