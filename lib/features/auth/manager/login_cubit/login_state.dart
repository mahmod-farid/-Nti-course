import 'package:nti_course/features/auth/data/models/user_model.dart';

abstract class LoginState {}
class LoginInitState extends LoginState{}
class LoginLoadingState extends LoginState{}
//class LoginChangePassState extends LoginState{}
class LoginSuccessState extends LoginState{}
class LoginErrorState extends LoginState

{
  final String error;
  LoginErrorState(this.error);
}
class LoginChangePassState extends LoginState{}
