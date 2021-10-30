

import 'package:dsc/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("New To Do's"),

          CustomTextField(
            hintText: "Title",
            controller: titleController,
          ),


          CustomTextField(
            hintText: "Notes",
            controller: noteController,
          ),


          SwitchListTile(
            title: Text("Set Date"),
            value: true,
            onChanged: (value) {

            },
          ),

          ListTile(
            title: const Text("Alarm"),
            trailing: const Text("20/10/2021"),
            onTap: (){

            },
          ),

          ListTile(
            title: const Text("Priority"),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: (){

            },
          ),

          ListTile(
            title: const Text("Add Image"),
            leading: const Icon(Icons.add),
            onTap: (){

            },
          ),


          ElevatedButton(
            child: const Text("Add Task"),
            onPressed: (){

            },
          )
        ],
      ),


    );
  }
}
