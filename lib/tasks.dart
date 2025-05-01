import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_bars.dart';
import 'package:nti_course/core/utils/app_containers.dart';
import 'package:flutter/cupertino.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                AppBars(),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.add_circle)
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: Align(
                alignment: Alignment.centerLeft,

              child: Text('Tasks', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
             ),
           ),
            MyContainers(),
            MyContainers(),
            MyContainers(),
            MyContainers(),
          ],
        ),
      ),
    );
  }
}
