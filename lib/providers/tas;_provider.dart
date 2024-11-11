import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskProvider extends ChangeNotifier {

  List<Task> tasks = [
    Task(title: 'task1', completed: false),
  ];

  List<Task> get Tasks {
    return tasks;
  }

  void addTask(task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(index) {
    tasks.removeAt(index);
    notifyListeners();
  }

  void makeTaskCompleted(index) {
    tasks[index].completed = !tasks[index].completed;
    notifyListeners();
}

}