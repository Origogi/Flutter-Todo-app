import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;

  TaskTile({this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}