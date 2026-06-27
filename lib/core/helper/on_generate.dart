import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/auth/presentation/view/sign_in_view.dart';
import 'package:phone_zone/features/auth/presentation/view/sign_up_view.dart';
import 'package:phone_zone/features/home/presentation/view/home_view.dart';
import 'package:phone_zone/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case RouteManager.homeView:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case RouteManager.signIn:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case RouteManager.signUp:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
