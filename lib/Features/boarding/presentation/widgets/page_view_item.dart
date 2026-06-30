import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_styles.dart';
import '../../data/models/boarding_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.index,
  });
  final String title;
  final String description, image;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Image.asset(image, width: 300.w, height: 300.h, fit: BoxFit.fill),
            const SizedBox(height: 32),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold22.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyles.regular16,
              ),
            ),
            SizedBox(height: 15.h),
            index == boardingList.length - 1
                ? const SizedBox.shrink()
                : DotsIndicator(
                    dotsCount: boardingList.length - 1,
                    position: index.toDouble(),
                    decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(2.5),
                      size: const Size(10, 10),
                      activeSize: const Size(9, 9),
                      activeColor: AppColors.primaryColor,
                      color: AppColors.darkGreyColor,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
