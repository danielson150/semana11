import 'package:flutter/material.dart';
import 'package:passing_data/src/models/todo_model.dart';
import 'package:passing_data/src/models/user_model.dart';
import 'package:passing_data/src/pages/screen_detail.dart';
import 'package:passing_data/src/repository/user_repository.dart';

class TodosScreen extends StatefulWidget {
  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  UserRepository userRepository = UserRepository();
  List<User> users = [];

  void setUsers() async {
    List<User> response = await userRepository.getUsers();
    this.users.addAll(response);
    setState(() {});
  }

  @override
  void initState() {
    setUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(user: users[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
