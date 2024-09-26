import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoappwithprovider/models/save_task.dart';
import 'package:todoappwithprovider/pages/add_todo.dart';
import 'package:todoappwithprovider/pages/todo_list.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const TodoList(),
        '/add-todo-screen': (_) => AddTodo()
      },
    );
  }
}
