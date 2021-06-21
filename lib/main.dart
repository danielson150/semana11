import 'package:flutter/material.dart';
import 'package:passing_data/src/models/todo_model.dart';
import 'package:passing_data/src/pages/screen_todos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Semana 11',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: TodosScreen(),
    );
  }
}
