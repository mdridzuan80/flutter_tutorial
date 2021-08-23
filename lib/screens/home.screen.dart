import 'package:flutter/material.dart';
import 'package:tutorial01/models/task.model.dart';
import 'package:tutorial01/providers/TaskListProvider.dart';
import 'package:tutorial01/widgets/TaskListWrapper.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<TaskListProvider>(
      create: (context) => TaskListProvider(),
      child: TaskListWrapper(),
    );
  }
}
