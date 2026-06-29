
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/services/shared_prefs.dart';
import '../../../../core/utils/app_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
     child: Image.asset(Assets.imagesAppLogo),
    );
  }
  
  void executeNavigation() {
     var isOnBoardingViewSeen =
        PrefsSingleton.getBool(KIsOnBoardingViewSeen) ?? false;
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, Routes.loginRoute);
      } else {
        Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
      }
    });
  }
}