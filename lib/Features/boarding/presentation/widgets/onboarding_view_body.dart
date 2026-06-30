import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms/core/constants/constants.dart';
import 'package:lms/core/routes/routes.dart';
import 'package:lms/core/services/shared_prefs.dart';
import 'package:lms/core/utils/app_colors.dart';
import 'package:lms/core/utils/text_styles.dart';
import 'onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              PrefsSingleton.setBool(KIsOnBoardingViewSeen, true);
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: AppColors.lightGreyColor,
                ),
                width: 50.w,
                height: 25.h,
                child: Center(child: Text('SKIP', style: TextStyles.regular12)),
              ),
            ),
          ),
          SizedBox(height: 50.h),
          Expanded(
            child: OnboardingPageView(
              pageController: pageController,
              index: currentPage,
            ),
          ),
        ],
      ),
    );
  }
}
