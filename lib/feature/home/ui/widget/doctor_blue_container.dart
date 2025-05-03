import 'package:dr_app/core/utils/app_assets.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        children: [
          Container(

            margin:EdgeInsets.symmetric(
      horizontal: 16.w,
          vertical: 16.h
      ) ,
            width: double.infinity,
            height: 165.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppAssets.homeBluePattern)
              ,fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
            horizontal: 16.w,
                vertical: 8.h
            ) ,
                  child: Column(
                    children: [
                      Text("Book and\nschedule with\nnearest doctor" ,style: AppStyles.medium18white,),
                    ],
                  ),

                ),
                SizedBox(height: 16.h,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Text("Find Nearby" ,style: AppStyles.regular14blue,)
                  ,style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                      backgroundColor: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r)
                        )
                      )
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            right: 18,
              top: 0,
              height: 210,
              child: Image.asset(AppAssets.homeBlueDoctor))
        ],
      ),
    );
  }
}
