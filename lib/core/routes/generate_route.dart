import 'package:flutter/material.dart';
import 'package:lms/Features/login/presentation/views/login_view.dart';
import 'package:lms/Features/signup/presentation/views/signup_view.dart';
import 'package:lms/Features/splash/presentation/views/splash_view.dart';
import 'package:lms/core/routes/routes.dart';

import '../../Features/boarding/presentation/views/onboarding_view.dart';


Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashRoute:
      return MaterialPageRoute(builder: (_) => SplashView());
    case Routes.onboardingRoute:
      return MaterialPageRoute(builder: (_) => const OnboardingView());
    case Routes.loginRoute:
      return MaterialPageRoute(builder: (_) => const LoginView());
    case Routes.signUpRoute:
      return MaterialPageRoute(builder: (_) => const SignUpView());
    
    default:
      return null;
  }
}
