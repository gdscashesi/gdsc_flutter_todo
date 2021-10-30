

import 'package:dsc/ui/screens/add_task_screen/add_task_screen.dart';
import 'package:dsc/ui/screens/task_screen/widgets/task_tile.dart';
import "package:flutter/material.dart";


class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(
                builder: (context) => AddTaskScreen()
            ));
          },

        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              BackButton(
                onPressed: () => Navigator.pop(context),
              ),



              const Text("All To Do's"),

              Row(
                children : const [
                  Text("Day"),
                  Text("Week"),
                  Text("Month"),
                ]
              ),


              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView(
                  children: [
                    TaskTile(
                      title: "Finish FDE assignment",
                      time: "2:00 PM",
                      complete: true,
                    ),


                    TaskTile(
                      title: "Do laundry",
                      time: "2:00 PM",
                      complete: false,
                    ),


                    TaskTile(
                      title: "Get Food",
                      time: "2:00 PM",
                      complete: true,
                    ),


                    TaskTile(
                      title: "Sweep room",
                      time: "2:00 PM",
                      complete: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
