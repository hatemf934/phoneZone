import 'package:flutter/material.dart';
import 'package:phone_zone/core/helper/on_generate.dart';
import 'package:phone_zone/core/utils/constant.dart';
import 'package:phone_zone/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const PhoneZone());
}

class PhoneZone extends StatelessWidget {
  const PhoneZone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.id,
    );
  }
}
