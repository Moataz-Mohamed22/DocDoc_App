import 'package:dr_app/core/di/di.dart';
import 'package:dr_app/core/helpers/extension.dart';
import 'package:dr_app/core/routing/routes.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:dr_app/core/widget/custom_text_button.dart';
import 'package:dr_app/core/widget/custom_text_for_filed.dart';
import 'package:dr_app/feature/auth/login/manager/auth_states.dart';
import 'package:dr_app/feature/auth/login/manager/login_cubit.dart';
import 'package:dr_app/feature/auth/login/ui/widget/text_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/dialogue_utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  late final LoginCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = getIt<LoginCubit>();
  }
  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Welcome Back", style: AppStyles.bold24Blue),
                  SizedBox(height: 8.h),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: AppStyles.regular14Gray,
                  ),
                  SizedBox(height: 30.h),
                  Form(
                    key: cubit.formKey,
                    child: BlocConsumer<LoginCubit, AuthStates>(
                      listener: (context, state) {
                        if (state is LoginErrorState) {
                          DialogueUtils.showMessage(
                            context: context,
                            message: state.error.errorMessage,
                            title: "Error",
                            posActionName: "OK",
                          );
                        } else if (state is LoginSuccessState) {
                          DialogueUtils.showMessage(
                            context: context,
                            message: "Login Successfully",
                            title: "Success",
                            posActionName: "OK",
                            posAction: () {
                             context.pushReplacementNamed(Routes.homeScreen);
                            },
                          );
                        }
                      },
                      builder: (context, state) {
                        return Column(
                          children: [
                            CustomTextForFiled(
                              hintText: "Email",
                              autofillHints: [AutofillHints.email],
                              keyboardType: TextInputType.emailAddress,
                              controller: cubit.email,

                            ),
                            SizedBox(height: 16.h),
                            CustomTextForFiled(
                              hintText: "Password",
                              autofillHints: [AutofillHints.password],
                              keyboardType: TextInputType.visiblePassword,
                              controller: cubit.password,
                              obscureText: isObscure,

                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                child: Icon(
                                  isObscure ? Icons.visibility_off : Icons.visibility,
                                  size: 20.r,
                                  color: AppColors.blueColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: AppStyles.regular13blue,
                                ),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            state is LoginLoadingState
                                ? const CircularProgressIndicator()
                                : CustomTextButton(
                              text: "Login",
                              onPressed: () {
                                cubit.login();
                              },
                            ),
                            SizedBox(height: 235.h),
                           TextLogin()
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
