import 'package:dr_app/feature/auth/login/domain/use_case/login_use_case.dart';
import 'package:dr_app/feature/auth/login/manager/auth_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
@injectable
class LoginCubit extends Cubit<AuthStates> {
  LoginUseCase useCase ;
  LoginCubit({required this.useCase}):super(LoginInitialState());
  TextEditingController password = TextEditingController(
    text: "passwordddd",
  );
  TextEditingController email =TextEditingController(
    text: "moataz@gamil.com"
  );
  var formKey = GlobalKey<FormState>();
 void login()async {
   if (formKey.currentState!.validate() == true) {
     emit(LoginLoadingState());
     var either = await useCase.invoke(email.text, password.text);
     either.fold((error){
       emit(LoginErrorState(error: error));
     }, (response){
       emit(LoginSuccessState(response: response));
     });
   }
 }}