import 'package:flutter/material.dart';
import 'package:nti_course/features/auth/views/register_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lexend Deca',
      ),
      debugShowCheckedModeBanner: false,
      home: RegisterView(),
    );
  }
}
