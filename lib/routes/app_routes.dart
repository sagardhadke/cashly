import 'package:cashly/screens/home_page.dart';
import 'package:cashly/screens/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final String home = "/";
  static final String splash = "/splash";

  static Map<String, WidgetBuilder> mRoutes = {
    AppRoutes.splash: (_) => SplashPage(),
    AppRoutes.home: (_) => MyHome(),
  };
}
