import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/providers/task_list_provider.dart';
import 'package:provider/provider.dart';

class TasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListProvider>(
      builder: (context, taskListProvider, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskListProvider.tasks[index];
            return TaskTile(
              longPressCallBack: () {
                taskListProvider.deleteTask(task);
              },
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckBoxState: (checkBoxState) {
                taskListProvider.updateTask(task);
              },
            );
          },
          itemCount: taskListProvider.tasksCounter,
        );
      },
    );
  }
}
