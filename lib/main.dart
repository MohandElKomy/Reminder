import 'package:flutter/material.dart';
import 'package:todoey_flutter/providers/task_list_provider.dart';
import 'package:todoey_flutter/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListProvider>(
      create: (context) {
        return TaskListProvider();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
