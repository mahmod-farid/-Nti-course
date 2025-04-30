import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:flutter_svg/svg.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: SizedBox(
                       height: MediaQuery.of(context).size.height,
                       width: double.infinity,
                       child: SvgPicture.asset(AppAssets.greenTrue , fit: BoxFit.fill),
                       ),
           ),
        ),
      );
  }
}
