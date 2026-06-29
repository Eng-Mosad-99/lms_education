import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lms/core/services/shared_prefs.dart';
import 'package:lms/firebase_options.dart';

import 'core/routes/generate_route.dart';
import 'core/routes/routes.dart';
import 'core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await PrefsSingleton.init();
  runApp(const LmsEducation());
}

class LmsEducation extends StatelessWidget {
  const LmsEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit Hub',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      initialRoute: Routes.splashRoute,
      onGenerateRoute: generateRoute,
    );
  }
}
