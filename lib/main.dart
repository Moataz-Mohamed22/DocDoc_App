import 'package:dr_app/core/routing/app_router.dart';
import 'package:dr_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/di.dart';
import 'core/utils/bloc_observer.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  Bloc.observer = MyBlocObserver();
  runApp(DocApp(appRouter: AppRouter(),));
}



