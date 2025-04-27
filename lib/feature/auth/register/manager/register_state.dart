part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitialStates extends RegisterState {}
final class RegisterLoadingStates extends RegisterState {}
final class RegisterErrorStates extends RegisterState {
  RegisterErrorStates({required this.failures});
  Failures failures ;

}
final class RegisterSuccessStates extends RegisterState {
  RegisterSuccessStates({required this.response});
  RegisterResponseEntity response ;

}
