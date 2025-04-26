import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lexend Deca',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('hello GitHub',
            style: TextStyle(
                fontSize: 85,
                fontWeight: FontWeight.w900
            ),),
        ),
      ),
    );
  }
}
