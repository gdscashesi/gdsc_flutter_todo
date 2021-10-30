

import 'package:dsc/ui/screens/add_task_screen/add_task_screen.dart';
import "package:flutter/material.dart";


class TaskTile extends StatefulWidget {
  final String title;
  final String time;
  bool complete;

  TaskTile({
    required this.title,
    required this.time,
    required this.complete,
    Key? key,
  }) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {


    return ListTile(
      leading: Checkbox(
        value: widget.complete,

        onChanged: (value){

          setState(() {

            widget.complete = value!;

          });

        },
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => AddTaskScreen()
        ));
      },
      title: Text(widget.title,
        style: TextStyle(
          decoration: widget.complete ? TextDecoration.lineThrough : null
        ),
      ),
      subtitle: Text(widget.time),
    );
  }
}
