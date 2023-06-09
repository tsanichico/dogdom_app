import 'package:dogdom_app/ui/screens/bottom_navbar.dart';
import 'package:dogdom_app/ui/screens/discovery_screen.dart';
import 'package:dogdom_app/ui/screens/home_screen.dart';
import 'package:dogdom_app/ui/screens/login_screen.dart';
import 'package:dogdom_app/ui/screens/select_screen.dart';
import 'package:flutter/material.dart';

import '../ui/screens/splash_screen.dart';

abstract class AppRoutes {
  static const String loginScreen = 'login_screen';
  static const String splashScreen = 'splash_screen';
  static const String appbarhomeScreen = 'appbarhome_screen';
  static const String selectScreen = 'select_screen';
  static const String discoveryScreen = 'discovery_screen';
  static const String bottomNavbar = 'bottom_navbar';
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
      case AppRoutes.appbarhomeScreen:
        screen = AppbarHomeScreen();
        break;
      case AppRoutes.selectScreen:
        screen = SelectScreen();
        break;
      case AppRoutes.discoveryScreen:
        screen = DiscoveryScreen();
        break;
      case AppRoutes.bottomNavbar:
        screen = BottomNavbar();
        break;
      default:
        screen = SplashScreen();
        break;
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
