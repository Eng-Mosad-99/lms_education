import 'package:flutter/material.dart';
import 'package:lms/Features/splash/presentation/views/splash_view.dart';
import 'package:lms/core/routes/routes.dart';


Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashRoute:
      return MaterialPageRoute(builder: (_) => SplashView());
    // case Routes.onboardingRoute:
    //   return MaterialPageRoute(builder: (_) => const OnboardingView());
    
    default:
      return null;
  }
}
