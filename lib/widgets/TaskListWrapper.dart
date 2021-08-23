import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial01/models/task.model.dart';
import 'package:tutorial01/providers/TaskListProvider.dart';

class TaskListWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskList = Provider.of<TaskListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome List App'),
      ),
      body: ListView(
        children: List.generate(
          taskList.tasks.length,
          (index) => TaskContainer(taskList.tasks[index], index),
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
            onPressed: () {
              taskList.addTask();
            },
          );
        },
      ),
    );
  }
}

class TaskContainer extends StatelessWidget {
  Task myTask;
  int index;

  TaskContainer(this.myTask, this.index);

  @override
  Widget build(BuildContext context) {
    var tasks = Provider.of<TaskListProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myTask.getName(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      myTask.getDescription(),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () => tasks.editNameTask(index, 'Item'),
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => tasks.deleteTask(index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
