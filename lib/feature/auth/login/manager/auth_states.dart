import '../../../../core/errors/failures.dart';
import '../domain/entities/login_response_entity.dart';

class AuthStates {}
class LoginLoadingState extends AuthStates {}
class LoginInitialState extends AuthStates {}

class LoginSuccessState extends AuthStates {
  LoginResponseEntity response;

  LoginSuccessState({required this.response});
}

class LoginErrorState extends AuthStates {
  Failures error;

  LoginErrorState({required this.error});
}