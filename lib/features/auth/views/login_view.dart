import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_course/features/auth/manager/user_cubit/user_cubit.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_cubit.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_state.dart';
class LoginView extends StatelessWidget {
   LoginView({super.key});

// من جيت هب عبدالله
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context1) {
    return Scaffold(
        appBar: AppBar(
         title:Text('Login'),
        ),
      body: BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: Builder(
            builder: (context2) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocConsumer<LoginCubit, LoginState>(
                  builder: (context, state) {
                    print('re build');
                    return Form(
                      key: LoginCubit
                          .get(context2)
                          .formKey,
                      child: Column(
                          children:
                          [
                            TextFormField(
                              controller: LoginCubit
                                  .get(context2)
                                  .emailController,
                              validator: (String? value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Enter valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: LoginCubit
                                  .get(context2)
                                  .passwordController,
                              validator: (String? value) {
                                if (value!.isEmpty || value.length < 6) {
                                  return 'Enter valid password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 40,),
                            ElevatedButton(onPressed: LoginCubit.get(context2)
                                .onLoginPressed,
                                child: Text('Login')),
                            SizedBox(height: 20,),
                            if(state is LoginErrorState)
                              Text(state.error),
                          ]
                      ),
                    );
                  },
                  listener: (context, state)
                  {
                    if (state is LoginSuccessState)
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Success')
                        ));
                      }
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}




  //     body:
  //     BlockProvider(
  //
  //       child: Padding(
  //         padding: AppPadings.pagePadding,
  //         child: Column(
  //           children: [
  //
  //                SizedBox(
  //                   height: MediaQuery.of(context).size.height * 0.45,
  //                   width: double.infinity,
  //                   child: Image.asset(AppAssets.palestin),
  //
  //               ),
  //
  //             DefaultAuthFormField(
  //               controller: emailController,
  //             ),
  //             DefaultAuthFormField(
  //               controller: passwordController,
  //             ),
  //
  //
  //             SizedBox(
  //               width: double.infinity,
  //               child: DefaultBtn(
  //                   text: AppStrings.login.toUpperCase(),
  //                   onPressed:(){}
  //               ),
  //             ),
  //             Padding(
  //              padding: const EdgeInsets.only(top: 40),
  //              child: RichText(text: TextSpan(
  //                text: "Don't have an Account?      ",
  //                style: TextStyle(
  //                  color: AppColors.black,
  //                  fontWeight: FontWeight.w300,
  //                  fontSize: 17,
  //                ),
  //
  //                children: [
  //                  TextSpan(
  //                    text: 'Register',
  //                    style: TextStyle(
  //                      color: AppColors.black,
  //                      fontWeight: FontWeight.bold,
  //                    )
  //                  )
  //             ]
  //              )),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }























// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:nti_course/core/localization/app_strings.dart';
// import 'package:nti_course/features/auth/manager/login_cubit/login_cubit.dart';
// import 'package:nti_course/features/auth/manager/login_cubit/login_state.dart';
//
// class LoginView extends StatelessWidget {
//   const LoginView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppStrings.login),
//       ),
//       body:
//       BlocProvider(
//         create: (BuildContext context) => LoginCubit(),
//         child: Builder(
//           builder: (context2) {
//             return Padding(
//                 padding: const EdgeInsets.all(20),
//                   child: BlocConsumer<LoginCubit,LoginState> (
//                 //  child: Form(
//                     builder: (context, state)
//                       {
//                         print('re build');
//                         return Form (
//                       key: LoginCubit.get(context2).formKey,
//                         child: Column(
//                         children: [
//                         TextFormField(
//                         controller: LoginCubit.get(context2).emailController,
//                         validator: (String? value)
//                         {
//                         if (value!.isEmpty || !value.contains('@'))
//                           {
//                         return "Enter valid Email";
//                           }
//                         return null;
//                         },
//                         ),
//                         SizedBox(height: 20,),
//                         TextFormField(
//                         controller:LoginCubit.get(context2).passwordController,
//                         validator: (String? value)
//                         {if (value!.isEmpty || value.length<6)
//                         {
//                         return "Enter valid Password";
//                         }
//                         return null;
//                         },
//                         ),
//                         SizedBox(height: 40,),
//                       ElevatedButton(onPressed: LoginCubit.get(context2).onLoginPressed , child: Text('Login')),
//                       SizedBox(height: 20,),
//                      if (state is LoginErrorState)
//                       Text(state.error),
//                         ],
//                         ),
//                         );
//                       },
//                       listener: (context, state)
//                     {
//                       ScaffoldMessenger.of(context)
//                           .showSnackBar(SnackBar(
//                           content: Text('Success')
//                     ));
//                   }
//               ),
//             );
//           }
//         ),
//       ),
//     );
//   }
// }