import 'package:bloc/bloc.dart';
import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';
import 'package:dr_app/feature/auth/register/domain/use_case/register_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';
@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.useCase}) : super(RegisterInitialStates());

  TextEditingController nameController = TextEditingController(text: "Al-Moataz Bellah");
  TextEditingController passwordController = TextEditingController(text: "passwordddd");
  TextEditingController rePasswordController = TextEditingController(text: "passwordddd");
  TextEditingController phoneController = TextEditingController(text: "01032775681");
  TextEditingController emailController = TextEditingController(text: "al-Moataz@gamil.com");
  var formKey = GlobalKey<FormState>();
  RegisterUseCase useCase ;
  bool isObscure = true ;
void  register()async{
if(formKey.currentState!.validate() == true){
  emit(RegisterLoadingStates());
  var either= await useCase.invoke(nameController.text, emailController.text, phoneController.text,
      passwordController.text, rePasswordController.text, 1);
  either.fold((error){
    emit(RegisterErrorStates(failures: error));
  }, (response){
    emit(RegisterSuccessStates(response: response));
  });
}
  }
}
