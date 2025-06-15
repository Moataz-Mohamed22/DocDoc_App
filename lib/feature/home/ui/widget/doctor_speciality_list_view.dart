import 'package:dr_app/core/utils/app_assets.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:dr_app/core/utils/app_styles.dart';
import 'package:dr_app/feature/home/manager/home_cubit.dart';
import 'package:dr_app/feature/home/manager/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/di/di.dart';
@injectable
class DoctorSpecialityListView extends StatefulWidget {
  DoctorSpecialityListView({super.key});

  @override
  State<DoctorSpecialityListView> createState() => _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  final HomeCubit cubit = getIt<HomeCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getSpecialization();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      bloc: cubit,
      builder: (context, state) {
        if (state is SpecializationLoadingState) {
          return Center(child: CircularProgressIndicator());
        }        else if (state is SpecializationErrorState) {
          return Center(child: Text("ERROR : ${state.error.errorMessage}"));
        }

        else if (state is SpecializationSuccessState) {
          final specializationList = cubit.specializationList;
          return SizedBox(
            height: 100.h,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 16.w),
              scrollDirection: Axis.horizontal,
              itemCount: specializationList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(right: 33.w, bottom: 8.h),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.moreLiteGrayColor,
                        radius: 28.r,
                        child: Image.asset(
                          AppAssets.listViewDoctorIcon,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        specializationList[index].name ?? 'Unknown',
                        style: AppStyles.regular14black,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }

        else {
          return SizedBox.shrink();
        }
      },
    );
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }
}

