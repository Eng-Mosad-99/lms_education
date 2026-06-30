import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lms/core/constants/constants.dart';
import 'package:lms/core/routes/routes.dart';
import 'package:lms/core/services/shared_prefs.dart';
import 'package:lms/core/utils/app_colors.dart';
import 'package:lms/core/utils/text_styles.dart';
import '../../../../core/utils/app_assets.dart';

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
          Expanded(child: OnboardingPageView(pageController: pageController)),
        ],
      ),
    );
  }
}

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في', ),
              Text(
                ' HUB',
               
              ),
              Text(
                'Fruit',
               
              ),
            ],
          ),
          description:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.imagesOnboarding1,
          
          isVisible: true,
        ),

        
      ],
    );
  }
}



class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    
    required this.isVisible,
  });
  final Widget title;
  final String description, image;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         
              
          const SizedBox(height: 60),
          title,
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyles.regular16,
            ),
          ),
        ],
      ),
    );
  }
}
