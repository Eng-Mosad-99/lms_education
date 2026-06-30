

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description, image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Image.asset(image),
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
          ],
        ),
      ),
    );
  }
}
