import 'package:dogdom_app/ui/screens/home_screen.dart';
import 'package:dogdom_app/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../ui/screens/splash_screen.dart';

abstract class AppRoutes {
  static const String loginScreen = 'login_screen';
  static const String splashScreen = 'splash_screen';
  static const String homeScreen = 'home_screen';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case AppRoutes.splashScreen:
        screen = SplashScreen();
        break;
      case AppRoutes.loginScreen:
        screen = LoginScreen();
        break;
      case AppRoutes.homeScreen:
        screen = HomeScreen();
        break;
      default:
        screen = SplashScreen();
        break;
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
