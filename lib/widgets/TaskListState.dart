import 'package:flutter/material.dart';
import 'package:tutorial01/models/task.model.dart';

class TaskListState extends InheritedWidget {
  final List<Task> tasks;
  final Function addTask;
  final Function deleteTask;
  final Function editNameTask;

  int i = 0;

  TaskListState({
    Key? key,
    required Widget child,
    required this.tasks,
    required this.addTask,
    required this.deleteTask,
    required this.editNameTask,
  }) : super(key: key, child: child);

  static TaskListState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskListState>();
  }

  setIndex(int index) {
    this.i = index;
  }

  checkUpdated(TaskListState old) {
    if(tasks.isNotEmpty) {
      return old.tasks[i].getName() != tasks[i].getName();
    }

    return old.tasks.length != tasks.length;
  }

  @override
  bool updateShouldNotify(TaskListState old) {
    return checkUpdated(old);
  }
}
