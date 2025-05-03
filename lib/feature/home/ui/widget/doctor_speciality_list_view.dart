import 'package:dr_app/core/utils/app_assets.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( height: 100.h,
      child: ListView.builder(
      padding: EdgeInsets.only(
        left: 16.w
      )
      ,scrollDirection: Axis.horizontal,itemCount: 8,itemBuilder:
      (context, index) {
        return Container(
          padding: EdgeInsets.only(
            right: 33.w,
            bottom: 8.h
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.moreLiteGrayColor,
                radius: 28.r,
                child: Image.asset(AppAssets.listViewDoctorIcon ,height: 24.h,width: 24.w,),
              ),
              SizedBox(height: 8.h,),
              Text("General" ,style: AppStyles.regular14black,)
            ],
          ),
        );
      },),
    );
  }
}
