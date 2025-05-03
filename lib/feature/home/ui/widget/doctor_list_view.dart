import 'package:cached_network_image/cached_network_image.dart';
import 'package:dr_app/core/utils/app_assets.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder( scrollDirection: Axis.vertical,itemCount: 8,itemBuilder: (context ,index){
      return Row(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 8.h
            ),
            child: Container(

              width: 110.w,
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Image.asset(AppAssets.drRandy),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("DR- Name" ,style: AppStyles.bold16Black,),
              SizedBox(height: 8.h,),
              Text("DR- Name" ,style: AppStyles.regular13gray,),
            ],
          )
        ],
      );
    }));
  }
}
