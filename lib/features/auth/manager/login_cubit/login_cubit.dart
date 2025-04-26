import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_course/features/auth/manager/login_cubit/login_state.dart';

class LoginCubit extends Cubit <LoginState>
{
  LoginCubit():super(LoginInitState());

  static LoginCubit get(context) => BlocProvider.of(context);

  String? _error;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // LoginCubit(): super(LoginInitState());
  void onLoginPressed ()
  {
    emit(LoginLoadingState());
    _error = null;
    if(!formKey.currentState!.validate())
      {
        _error = 'Complete the form and fix error';
      }
     if (_error == null)
       {
         emit(LoginSuccessState());
       }
      else
        {
          emit(LoginErrorState(_error!));
        }
      print(_error);

  }
}