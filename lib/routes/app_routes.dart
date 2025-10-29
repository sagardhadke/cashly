import 'package:cashly/screens/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final String home = "/";

  static Map<String, WidgetBuilder> mRoutes = {AppRoutes.home: (_) => MyHome()};
}
