import 'package:flutter/material.dart';
import 'package:translater/ui/english/english_screen.dart';
import 'package:translater/ui/select/select_screen.dart';
import 'package:translater/ui/splash/splash_screen.dart';
import 'package:translater/ui/uzbek/uzbek_screen.dart';

class RouteNames {
  static const String initial = "/";
  static const String select = "/select";
  static const String uzbek = "/uzbek";
  static const String english = "/english";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initial:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.english:
        return MaterialPageRoute(builder: (context) => const EnglishScreen());
      case RouteNames.uzbek:
        return MaterialPageRoute(builder: (context) => const UzbekScreen());
      case RouteNames.select:
        return MaterialPageRoute(builder: (context) => const SelectScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('Route is not exist'),
            ),
          );
        });
    }
  }
}
