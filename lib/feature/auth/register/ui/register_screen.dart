import 'package:dr_app/core/di/di.dart';
import 'package:dr_app/core/widget/custom_text_button.dart';
import 'package:dr_app/core/widget/custom_text_for_filed.dart';
import 'package:dr_app/feature/auth/login/ui/widget/text_login.dart';
import 'package:dr_app/feature/auth/register/manager/register_cubit.dart';
import 'package:dr_app/feature/auth/register/ui/widget/create_account_and_des.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/dialogue_utils.dart';
import '../../../../core/utils/validators.dart';

class RegisterScreen extends StatelessWidget {
RegisterCubit cubit = getIt<RegisterCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: BlocListener<RegisterCubit, RegisterState>(
          bloc:cubit ,
          listener: (context, state) {
      if(state is RegisterLoadingStates){
        DialogueUtils.showMessage(context: context, message: "Loading.......");
      }else if(state is RegisterErrorStates){
        DialogueUtils.hideLoading(context);
        DialogueUtils.showMessage(context: context, message: state.failures.errorMessage,
            title: "Error",posActionName: "OK");
      }else if(state is RegisterSuccessStates){
        DialogueUtils.hideLoading(context);
        DialogueUtils.showMessage(context: context, message: "Register Successfully",
            title: "Success",posActionName: "OK");
      }
    },
          child: Form(
            key:cubit.formKey,
            child: Column(
              children: [
                CreateAccountAndDes(),
                CustomTextFormFiled(hintText: "name", controller:cubit.nameController,
                  validator:  AppValidators.validateFullName,),
                SizedBox(height: 16.h,),
                CustomTextFormFiled(hintText: "Email" ,
                  validator: AppValidators.validateEmail,controller: cubit.emailController,),
                SizedBox(height: 16.h,),
                CustomTextFormFiled(hintText: "Password" , validator: AppValidators.validatePassword,controller: cubit.passwordController,),
                SizedBox(height: 16.h,),
                CustomTextFormFiled(hintText: "Re-Password" , validator: AppValidators.validatePassword,controller: cubit.rePasswordController,),
                SizedBox(height: 16.h,),
                CustomTextFormFiled(hintText: "Your Number", validator: AppValidators.validatePhoneNumber,controller: cubit.phoneController,),
                SizedBox(height: 32.h,),

                CustomTextButton(text: " Create Account ", onPressed: () {
                  cubit.register();

                }),
                SizedBox(height: 70.h,),

                TextLogin()
              ],
            ),
          ),
        ),
      )),
    );


  }
}
