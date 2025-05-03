import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/feature/home/ui/widget/doctor_blue_container.dart';
import 'package:dr_app/feature/home/ui/widget/doctor_list_view.dart';
import 'package:dr_app/feature/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:dr_app/feature/home/ui/widget/doctor_speciality_see_all.dart';
import 'package:dr_app/feature/home/ui/widget/home_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: Column(
        children: [
        const  HomeTapBar(),
          SizedBox(height: 28.h,),
          const   DoctorBlueContainer(),
          const DoctorSpecialitySeeAll(),
          const DoctorSpecialityListView(),
          SizedBox(height: 8.h,),
          const DoctorListView(),

        ],
      )),
    );
  }
}
