import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_text_styles.dart';
import 'package:nti_course/features/auth/views/login_view.dart';
import 'package:nti_course/features/auth/views/register_view.dart';
import 'package:nti_course/features/auth/views/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTextStyles.appBarTitle()
        ),
        fontFamily: 'Lexend Deca',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
