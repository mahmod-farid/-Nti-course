import 'package:flutter/material.dart';
import 'package:nti_course/features/auth/views/login_view.dart';
import 'package:nti_course/features/auth/views/register_view.dart';
import 'package:nti_course/home1.dart';
import 'package:nti_course/nti_course.dart';
import 'package:nti_course/features/auth/views/splash.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHome() ,

    );
  }
}
