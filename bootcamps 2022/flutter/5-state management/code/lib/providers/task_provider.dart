import 'dart:collection';

import 'package:counter_app/model/task.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(title: "Task 1", isDone: false),
    Task(title: "Task 2", isDone: false),
    Task(title: "Task 3", isDone: true),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String title) {
    final Task task = Task(title: title);
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
