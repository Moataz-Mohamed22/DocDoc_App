import 'package:dr_app/core/utils/app_styles.dart';
import 'package:dr_app/feature/onboarding/doc_logo_and_name.dart';
import 'package:dr_app/feature/onboarding/get_started_button.dart';
import 'package:dr_app/feature/onboarding/image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.only(
          top: 30.h,
          bottom: 30.h
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
           const   DocLogoAndName(),
              SizedBox(height: 30.h,),
           const   DoctorImageAndText(),
              Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
              style: AppStyles.regular13gray, textAlign: TextAlign.center,),
              SizedBox(height: 30.h,),
              GetStartedButton()
          
          
            ],
          ),
        ),
      )),
    );
  }
}
