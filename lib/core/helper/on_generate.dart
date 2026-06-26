import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/route_manager.dart';
import 'package:phone_zone/features/home/presentation/view/home_view.dart';
import 'package:phone_zone/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case RouteManager.homeView:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
