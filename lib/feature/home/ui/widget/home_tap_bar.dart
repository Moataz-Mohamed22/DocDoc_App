import 'package:dr_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTapBar extends StatelessWidget {
  const HomeTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Padding(
    padding: EdgeInsets.only(
    left: 16.w,
        top: 22.h
    ),
    child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Omar!" ,style: AppStyles.bold18Black,),
            SizedBox(height: 2.h,),
            Text("How Are you Today?" ,style: AppStyles.regular13gray,),

          ],
        ),
    ), Spacer(),
        Container(
          margin: EdgeInsets.only(
            right: 16.w
          ),
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(48.r),
          ),
          child: Center(
            child: SvgPicture.asset("assets/svgs/notificationButton.svg"),
          ),
        )

      ],
    );
  }
}
