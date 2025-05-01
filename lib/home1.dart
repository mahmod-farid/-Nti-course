import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:nti_course/core/utils/app_bars.dart';
import 'package:nti_course/tasks.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  AppBars(),
                  Spacer(),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tasks()),
                    );
                  }, icon: Icon(Icons.add_circle),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 50),
                child: Text(
                  'There are no tasks yet, \n Press the button To\n add New Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w300),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 268,
                  child: SvgPicture.asset(AppAssets.purple , fit:BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
