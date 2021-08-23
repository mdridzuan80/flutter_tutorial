import 'package:flutter/material.dart';
import 'package:tutorial01/models/task.model.dart';

class TaskListProvider with ChangeNotifier {
  final tasks = [
    Task('1', 'Task 1', 'Task 1 Description'),
    Task('2', 'Task 2', 'Task 2 Description'),
    Task('3', 'Task 3', 'Task 3 Description'),
  ];

  void addTask() {
    var count = '${tasks.length + 1}';

    tasks.add(
      Task(
        '$count',
        'Task $count',
        'Task $count description',
      ),
    );
    notifyListeners();
  }

  void deleteTask(index) {
      tasks.removeAt(index);
      notifyListeners();
  }

  void editNameTask(int index, String value) {
      tasks[index].setName(value);
      notifyListeners();
  }
}
