import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  void Function()? onPressed;
  String?text ;
  double? buttonWidth ;
  double? buttonHeight ;

  WidgetStateProperty<Color?>? backgroundColo ;

  CustomTextButton({super.key , required this.text ,required this.onPressed , this.backgroundColo ,this.buttonHeight ,this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPressed,style: ButtonStyle(
        fixedSize:MaterialStateProperty.all(
          Size(buttonWidth?? 327.w,buttonHeight?? 50.h)
        ) ,
        padding:MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 14.h,horizontal: 12.w
          )
        ) ,
        backgroundColor:backgroundColo??MaterialStatePropertyAll(
            AppColors.blueColor
        ) ,
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ) ,
        )
      ), child: Text(text ??"" ,style: AppStyles.semiBold16White,)
    ,);
  }
}
