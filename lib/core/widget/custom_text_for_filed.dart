import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForFiled extends StatelessWidget {
  final  TextStyle? style ;
  final String hintText ;
  final  Widget? prefixIcon;
  final  TextEditingController? controller;
  final TextStyle? hintStyle ;
  final InputBorder? focusedBorder ;
  final InputBorder? enabledBorder;
  final  InputBorder? errorBorder ;
  Iterable<String>? autofillHints ;
  TextInputType? keyboardType;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText ;
    CustomTextForFiled({super.key ,

      this.controller,
      this.keyboardType,
     this.autofillHints,
    required this.hintText
    ,this.errorBorder ,
    this.enabledBorder,
    this.focusedBorder ,
    this.prefixIcon ,
    this.style ,
    this.suffixIcon,
    this.contentPadding ,
    this.hintStyle,
    this.obscureText,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
controller:controller ,
      style: AppStyles.regular14black,
      decoration: InputDecoration(
        hintText: hintText ,
        prefixIcon:prefixIcon ,
        hintStyle: hintStyle??AppStyles.regular14Gray,
        suffixIcon:suffixIcon ,
        prefix: prefixIcon,


        isDense: true,
        contentPadding:contentPadding?? EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h
        ),
        focusedBorder: focusedBorder??OutlineInputBorder(

          borderSide: BorderSide(
            color: AppColors.blueColor,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16.r)
        ),
        enabledBorder:enabledBorder ?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: AppColors.liteGrayColor,
            width: 1.3.w,
          ),

        ),
        errorBorder: errorBorder??OutlineInputBorder(

            borderSide: BorderSide(
              color: Colors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(16.r),

        ),

      ),
      obscureText:obscureText?? false,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
    );
  }
}
