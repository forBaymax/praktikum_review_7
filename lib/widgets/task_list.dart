import 'package:flutter/material.dart';
import 'package:pertemuan7/controller/main_controller.dart';
import 'package:pertemuan7/widgets/task_tile.dart';
import 'package:provider_base_tools/provider_base_tools.dart';


class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, TaskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              TaskData.updateTask(task);
            },
            longPressCallback: () {
              TaskData.deleteTask(task);
            },
          );
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}
