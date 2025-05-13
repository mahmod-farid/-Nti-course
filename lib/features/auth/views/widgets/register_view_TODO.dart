import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nti_course/core/cubit/image_manager_view.dart';
import 'package:nti_course/core/helper/my_navigator_TODO.dart';
import 'package:nti_course/core/helper/my_validator_TODO.dart';
import 'package:nti_course/core/translation/translation_keys.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:nti_course/features/auth/manager/register_cubit_TODO/register_cubit.dart';
import 'package:nti_course/features/auth/manager/register_cubit_TODO/register_state.dart';
import 'package:nti_course/features/auth/views/login_view.dart';
import 'package:nti_course/features/auth/views/widgets/custom_filled_btn_TODO.dart';
import 'package:nti_course/features/auth/views/widgets/custom_form_field_TODO.dart';

class RegisterViewTODO extends StatelessWidget {
  const RegisterViewTODO({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children:
            [
              // flag


              // ),
              // form
              BlocConsumer<RegisterCubit, RegisterState>(
                listener: (context, state) {
                  if (state is RegisterErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.error)));
                  }
                  else if (state is RegisterSuccessState) {
                    MyNavigator.goTo(
                        screen: () => LoginView(), isReplace: true);
                  }
                },
                builder: (context, state) {
                  return Form(
                    key: RegisterCubit
                        .get(context)
                        .formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children:
                        [
                          ImageManagerView(
                              onPicked: (XFile image) {
                                RegisterCubit
                                    .get(context)
                                    .image = image;
                              },
                              pickedBody: (XFile image) {
                                return Container(
                                  width: double.infinity,
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      image: DecorationImage(
                                          image: FileImage(File(image.path)),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                );
                              },
                              unPickedBody: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  AppAssets.palestin,
                                  width: double.infinity,
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.36,
                                  fit: BoxFit.cover,
                                ),
                              )
                          ),
                          SizedBox(height: 20,),
                          CustomFormField(
                            validator: EmailValidator(),
                            controller: RegisterCubit
                                .get(context)
                                .emailController,
                          ),
                          SizedBox(height: 20,),
                          CustomFormField(
                            obscureText: RegisterCubit
                                .get(context)
                                .showPassword,
                            validator: PasswordValidator(),
                            controller: RegisterCubit
                                .get(context)
                                .passwordController,
                            suffixIcon: IconButton(onPressed: RegisterCubit
                                .get(context)
                                .changePasswordVisibility,
                                icon: Icon(Icons.lock)),
                          ),
                          SizedBox(height: 20,),
                          CustomFormField(
                            obscureText: RegisterCubit
                                .get(context)
                                .showConfirmPassword,
                            validator: PasswordValidator(confirm: RegisterCubit
                                .get(context)
                                .passwordController
                                .text),
                            suffixIcon: IconButton(onPressed: RegisterCubit
                                .get(context)
                                .changeConfirmPasswordVisibility,
                                icon: Icon(Icons.lock)),
                            controller: RegisterCubit
                                .get(context)
                                .passwordConfirmController,
                          ),
                          SizedBox(height: 20,),
                          CustomFilledBtn(onPressed: RegisterCubit
                              .get(context)
                              .onRegisterPressed,
                              text: TranslationKeys.register
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
      ),
    );
  }
}


