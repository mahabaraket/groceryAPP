import 'package:flutter/cupertino.dart';
import 'package:grocery_app/screens/auth/intrologin_page.dart';
import 'package:grocery_app/screens/onboarding/onboarding_page.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;
    switch (route) {
      case AppRoutes.onboarding:
        return CupertinoPageRoute(builder: (_) => const OnboardingPage());

      case AppRoutes.introLogin:
        return CupertinoPageRoute(builder: (_) => const IntroLoginPage());

      default:
        return null;
    }
  }
}
