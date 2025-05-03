import 'package:dr_app/core/routing/app_router.dart';
import 'package:dr_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/di.dart';
import 'core/utils/bloc_observer.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  runApp(DocApp(appRouter: AppRouter(),));
}



