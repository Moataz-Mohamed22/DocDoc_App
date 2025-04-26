import 'package:dr_app/core/helpers/extension.dart';
import 'package:dr_app/core/routing/routes.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      context.pushNamed(Routes.loginScreen);
    },

        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.blueColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(Size (311, 52.h)),
          shape:  MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r)
          ))

        ),
        child: Text("Get Started" ,style: AppStyles.semiBold16White,));
  }
}
