import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_course/core/utils/app_assets.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SvgPicture(AppAssets.palestin as BytesLoader , width: 60 , height: 60),
          ),
          Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello!' , style: TextStyle()),
                Text('Mahmoud Farid' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),)
              ],
            ),
          )
        ],
      ),
    )
    );
  }
}
