import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:nti_course/core/helper/my_navigator_TODO.dart';
import 'package:nti_course/core/helper/my_validator_TODO.dart';
import 'package:nti_course/core/translation/translation_keys.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_cubit.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_state.dart';
import 'package:nti_course/features/auth/manager/user_cubit/user_cubit.dart';
import 'package:nti_course/features/auth/views/register_view.dart';
import 'package:nti_course/features/auth/views/widgets/custom_filled_btn_TODO.dart';
import 'package:nti_course/features/auth/views/widgets/custom_form_field_TODO.dart';
import 'package:nti_course/home1.dart';

class LoginViewTODO extends StatelessWidget {
  const LoginViewTODO({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> LoginCubit(),
      child: Scaffold(
        body: Column(
            children:
            [
            // flag
            ClipRRect(
            borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Image.asset(
        AppAssets.palestin,
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.36,
        fit: BoxFit.cover,
      ),
    ),

    SizedBox(height: 23,),

    // form
    BlocConsumer<LoginCubit, LoginState>(
    listener: (context, state)
    {
    if(state is LoginErrorState)
    {
    Get.showSnackbar(GetSnackBar(message: state.error,));

    }
    else if(state is LoginSuccessState)
    {
    MyNavigator.goTo(screen: ()=> MyHome, isReplace: true);
    }
    },
    builder: (context, state)
  {
    return Form(
    key: LoginCubit.get(context).formKey,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    children:
    [
    CustomFormField(
    validator: EmailValidator(),
    controller: LoginCubit.get(context).emailController,
    ),
    SizedBox(height: 20,),
    CustomFormField(
    obscureText:LoginCubit.get(context).showPassword,
    validator: PasswordValidator(),
    controller: LoginCubit.get(context).passwordController,
    suffixIcon: IconButton(onPressed: LoginCubit.get(context).changePasswordVisibility,
    icon: Icon(Icons.lock)),
    ),
    SizedBox(height: 20,),


    CustomFilledBtn(onPressed: LoginCubit.get(context).onLoginPressed,
    text: TranslationKeys.login.tr
    ),
    SizedBox(height: 10,),
    // Row(
    //   children: [
    //     Expanded(
    //       child: CustomFilledBtn(onPressed: ()
    //       {
    //         TranslationHelper.changeLanguage(true);
    //       },
    //           text: "ar"
    //       ),
    //     ),
    //     Expanded(
    //       child: CustomFilledBtn(onPressed: ()
    //       {
    //         TranslationHelper.changeLanguage(false);
    //       },
    //           text: "en"
    //       ),
    //     ),
    //   ],
    // )
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text('Don\'t have an account?'),
        TextButton(onPressed: ()
        {
          MyNavigator.goTo(screen: ()=> RegisterView());
        },
            child: Text(TranslationKeys.register.tr)
        ),
      ],
    )

    ],
    ),
    ),
    );
  },
    )

            ],
        ),
      ),
    );
  }
}
