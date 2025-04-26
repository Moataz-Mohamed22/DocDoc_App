import 'package:dr_app/core/utils/app_assets.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/doc_doc_logo_low_opactiy.svg"),
        Container(
          child: Image.asset(AppAssets.onBoardingDoctor),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.whiteColor ,
              Colors.white.withOpacity(0)
            ],
            stops: [0.14 ,0.4],
            begin: Alignment.bottomCenter ,
            end: Alignment.topCenter)
          ),
        ),
        Positioned(
          bottom: 30.h,
            left: 0,
            right: 0,

            child: Text("Best Doctor\nAppointment App" ,style: AppStyles.bold32Blue.copyWith(
              height: 1.4
            ),
            textAlign: TextAlign.center,))
      ],
    );
  }
}
