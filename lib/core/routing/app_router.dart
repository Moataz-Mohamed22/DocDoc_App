import 'package:dr_app/core/routing/routes.dart';
import 'package:dr_app/feature/auth/register/ui/register_screen.dart';
import 'package:dr_app/feature/home/home_screen.dart';
import 'package:dr_app/feature/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/auth/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
  switch(settings.name){
    case Routes.onBoardingScreen :
      return MaterialPageRoute(builder: (_) =>OnboardingScreen()
      );
    case Routes.loginScreen:
      return MaterialPageRoute(builder: (_) =>LoginScreen());
      case Routes.homeScreen:
      return MaterialPageRoute(builder: (_) =>HomeScreen());
      case Routes.registerScreen:
      return MaterialPageRoute(builder: (_) =>RegisterScreen());
    default:
      return MaterialPageRoute(builder: (_) =>Scaffold(
        body: Center(
          child: Text("No route defined ${settings.name}"),
        ),
      ));
  }
  }
}