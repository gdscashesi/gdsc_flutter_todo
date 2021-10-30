


import 'package:dsc/ui/screens/task_screen/tasks_screen.dart';
import 'package:flutter/material.dart';


class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return InkWell(
      child: Card(
          child: Container(
            padding: const EdgeInsets.all(8),
            height: size.width * 0.4,
            width: size.width * 0.4,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.account_box_rounded),
                    Spacer(),
                    Text("8")
                  ],
                ),

                const Text("All")
              ],
            ),
          )
      ),
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute( builder: (context)=> TasksScreen()
        ));
      },
    );
  }
}
