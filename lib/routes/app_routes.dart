import 'package:cashly/screens/home_page.dart';
import 'package:cashly/screens/onBoard/onBoard1.dart';
import 'package:cashly/screens/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = "/home";
  static const String splash = "/splash";
  static const String onboard1 = "/onBoard1";
  static const String onboard2 = "/onBoard2";

  static Map<String, WidgetBuilder> mRoutes = {
    AppRoutes.splash: (_) => SplashPage(),
    AppRoutes.home: (_) => MyHome(),
    AppRoutes.onboard1: (_) => Onboard1(),
  };
}
