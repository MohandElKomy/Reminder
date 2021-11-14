import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskListProvider with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
  ];

  int get tasksCounter {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(newText) {
    final task = Task(name: newText);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
