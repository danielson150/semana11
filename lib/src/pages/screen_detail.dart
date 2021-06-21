import 'package:flutter/material.dart';
import 'package:passing_data/src/models/todo_model.dart';
import 'package:passing_data/src/models/user_model.dart';

class DetailScreen extends StatelessWidget {
  final User user;

  // In the constructor, require a Todo.
  DetailScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.name),
            Text(user.username),
            Text(user.email),
          ],
        ),
      ),
    );
  }
}
