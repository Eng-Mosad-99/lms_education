
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
     child: Image.asset(Assets.imagesAppLogo),
    );
  }
}