import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              decoration: isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none)),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function onChanged;

  TaskCheckbox({this.checkBoxState, this.onChanged});

  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: onChanged);
  }
}
