import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_course/features/auth/data/models/user_model.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_state.dart';

class LoginCubit extends Cubit <LoginState>
{
  LoginCubit():super(LoginInitState());

  static LoginCubit get(context) => BlocProvider.of(context);


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool showPassword = false;
  void changePasswordVisibility()
  {
    showPassword = !showPassword;
    emit(LoginChangePassState());
  }

  // LoginCubit(): super(LoginInitState());
  void onLoginPressed ()
  {
    emit(LoginLoadingState());

    if(!formKey.currentState!.validate())

       {
         emit(LoginSuccessState());
       }
      else
        {
          emit(LoginErrorState("Complete Data"));
        }

  }
}