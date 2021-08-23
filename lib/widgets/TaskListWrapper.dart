import 'package:flutter/material.dart';
import 'package:tutorial01/models/task.model.dart';
import 'TaskListState.dart';

class TaskListWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome List App'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          var taskListState = TaskListState.of(context);

          return ListView(
            children: List.generate(
              taskListState!.tasks.length,
                  (index) => TaskContainer(taskListState.tasks[index], index),
            ),
          );
        },
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context){
          var taskListState = TaskListState.of(context);

          return FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
            onPressed: () {
              taskListState!.addTask();
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
    var taskListState = TaskListState.of(context);
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
                onPressed: () {
                  taskListState!.setIndex(index);
                  taskListState.editNameTask(index,'Item');
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  taskListState!.deleteTask(index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
