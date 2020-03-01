
import 'package:flutter/material.dart';
import 'package:flutter_todo/components/task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: ListView(
        children: <Widget>[
          TaskTile(
            text: 'Buy milks',
          ),
          TaskTile(
            text: 'Buy eggs',
          ),
          TaskTile(
            text: 'Buy broad',
          ),
          
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0))),
    );
  }
}
