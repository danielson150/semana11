import 'package:passing_data/src/models/user_model.dart';
import 'package:dio/dio.dart';

class UserRepository {
  String userURL = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    Response response = await Dio().get(userURL);
    List<User> users = [];
    for (var item in response.data) {
      users.add(User.fromJson(item));
    }
    return users;
  }
}
