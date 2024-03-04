import 'package:flutter/cupertino.dart';
import 'package:grocery_app/core/routes/unknown_page.dart';
import 'package:grocery_app/screens/auth/forget_password_page.dart';
import 'package:grocery_app/screens/auth/intrologin_page.dart';
import 'package:grocery_app/screens/auth/login_or_signup_page.dart';
import 'package:grocery_app/screens/auth/login_page.dart';
import 'package:grocery_app/screens/auth/num_verif_page.dart';
import 'package:grocery_app/screens/auth/password_resert.dart';
import '../../screens/auth/sign_up_page.dart';
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
      case AppRoutes.signup:
        return CupertinoPageRoute(builder: (_) => const SignUpPage());
      case AppRoutes.loginOrSignup:
        return CupertinoPageRoute(builder: (_) => const LoginOrSignUpPage());

      case AppRoutes.login:
        return CupertinoPageRoute(builder: (_) => const LoginPage());

      case AppRoutes.numberVerification:
        return CupertinoPageRoute(
            builder: (_) => const NumberVerificationPage());

      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => const ForgetPasswordPage());

      case AppRoutes.passwordReset:
        return CupertinoPageRoute(builder: (_) => const PasswordResetPage());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
