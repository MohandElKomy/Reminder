import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> toggleCheckBoxState;
  final VoidCallback longPressCallBack;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.toggleCheckBoxState,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
