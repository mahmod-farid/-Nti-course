import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nti_course/core/helper/my_responsive.dart';
import 'package:nti_course/core/translation/translation_keys.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:nti_course/core/utils/app_bars.dart';
import 'package:nti_course/core/utils/app_colors.dart';
import 'package:nti_course/features/auth/manager/user_cubit/user_cubit.dart';
import 'package:nti_course/features/auth/manager/user_cubit/user_state.dart';
import 'package:nti_course/tasks.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:MyResponsive.height(context, value: 80),
        title: BlocBuilder<UserCubit,UserState>(
          builder: (context, state) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(end: 16),
                  height: MyResponsive.height(context, value: 60),
                  width: MyResponsive.height(context, value: 60),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(AppAssets.palestin),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TranslationKeys.hello.tr,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300,
                            color: AppColors.black
                        ),
                      ),
                      SizedBox(height: 4,),
                          if(state is UserGetSuccess)
                           Text(state.userModel.userName??'No Name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,
                            color: AppColors.black
                        ),
                      ),
                    ],
                  ),
                )

              ],
            );
          }

        ),
      ),
    );
  }
}
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => Tasks()));},
//         child: Icon(Icons.add_circle),),
//         body:SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   AppBars(),
//                   Spacer(),
//                 ],
//               ),
//               Container(
//                 padding: EdgeInsetsDirectional.only(top: 50),
//                 child: Text(
//                   'There are no tasks yet, \n Press the button To\n add New Task',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w400),
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 278,
//                   child: SvgPicture.asset(AppAssets.purple , fit:BoxFit.cover,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//
//       ),
//     );
//   }
// }
