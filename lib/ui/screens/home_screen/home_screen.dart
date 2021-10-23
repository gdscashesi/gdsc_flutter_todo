

import 'package:dsc/ui/screens/home_screen/widgets/task_tile.dart';
import "package:flutter/material.dart";

/*dart*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [

            Spacer(),

            const Text("Hello GDSC!,"),
            const Text("You have 3 tasks scheduled"),
            const Text("for today"),


            Spacer(),

            ElevatedButton(
              child:  const Text("Create new folder"),
              onPressed: (){

              },
            ),


            Spacer(),

            TextButton(
                onPressed: (){},
                child: const Text("Edit")
            ),

            Row(
              children: const [


                TaskTile(),


                TaskTile(),


              ],
            ),

            Row(
              children: const [


                TaskTile(),

                TaskTile()



              ],
            ),
          ],
        ),
      )
    );
  }
}
