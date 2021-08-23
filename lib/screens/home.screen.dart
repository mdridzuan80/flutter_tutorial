import 'package:flutter/material.dart';
import 'package:tutorial01/models/task.model.dart';
import 'package:tutorial01/widgets/TaskListState.dart';
import 'package:tutorial01/widgets/TaskListWrapper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _addTask() {
    setState(() {
      var count = '${tasks.length+1}';

      tasks.add(
        Task(
          '$count',
          'Task $count',
          'Task $count description',
        ),
      );
    });
  }

  void _deleteTask(index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void _editNameTask(int index, String value) {
    setState(() {
      tasks[index].setName(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(context);
    return TaskListState(
      tasks: tasks,
      deleteTask: _deleteTask,
      addTask: _addTask,
      editNameTask: _editNameTask,
      child: TaskListWrapper(),
    );
  }
}