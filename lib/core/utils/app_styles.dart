
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final TextStyle bold24Black = TextStyle(
    fontSize: 24.sp ,color:AppColors.blackColor
      ,fontWeight: FontWeight.w700
  );
  static final TextStyle bold24Blue = TextStyle(
    fontSize: 24.sp ,color:AppColors.blueColor
      ,fontWeight: FontWeight.w700
  );
  static final TextStyle bold32Blue = GoogleFonts.inter(
    fontSize: 32.sp ,color:AppColors.blueColor
      ,fontWeight: FontWeight.bold
  );
  static final TextStyle regular13gray = GoogleFonts.inter(
    fontSize: 13.sp ,color:AppColors.grayColor
      ,fontWeight: FontWeight.w400
  );
  static final TextStyle regular14Gray = GoogleFonts.inter(
    fontSize: 14.sp ,color:AppColors.grayColor
      ,fontWeight: FontWeight.w400
  );
  static final TextStyle regular14blue = GoogleFonts.inter(
    fontSize: 14.sp ,color:AppColors.blueColor
      ,fontWeight: FontWeight.w400
  );
  static final TextStyle regular13blue = GoogleFonts.inter(
    fontSize: 13.sp ,color:AppColors.blueColor
      ,fontWeight: FontWeight.w400
  );
  static final TextStyle regular14black = GoogleFonts.inter(
    fontSize: 14.sp ,color:AppColors.blackColor
      ,fontWeight: FontWeight.w400
  );
  static final TextStyle semiBold16White = GoogleFonts.inter(
    fontSize: 16.sp ,color:AppColors.whiteColor
      ,fontWeight: FontWeight.w600
  );
  static final TextStyle semiBold16blue = GoogleFonts.inter(
    fontSize: 16.sp ,color:AppColors.blueColor
      ,fontWeight: FontWeight.w600
  );
}