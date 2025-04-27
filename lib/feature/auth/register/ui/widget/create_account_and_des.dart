import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountAndDes extends StatelessWidget {
  const CreateAccountAndDes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: 70.h,
        left: 31.w
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Create Account" ,style: AppStyles.bold24Blue ,),
          SizedBox(height: 8.h,),
          Text("Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
          style: AppStyles.regular14Gray,),
          SizedBox(height: 17.h,),


        ],
      ),
    );
  }
}
