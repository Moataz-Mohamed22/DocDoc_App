import 'package:dr_app/core/routing/app_router.dart';
import 'package:dr_app/core/routing/routes.dart';
import 'package:dr_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
final AppRouter appRouter ;
DocApp({super.key, required this.appRouter });
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size (375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doc App",
        theme: ThemeData(
          primaryColor: AppColors.blueColor
        ),
onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
