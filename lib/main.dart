import 'package:flutter/material.dart';
import 'package:flutter_todo/model/task_data.dart';
import 'package:flutter_todo/screens/tasks_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
