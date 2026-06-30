
import 'package:flutter/material.dart';
import 'package:lms/Features/boarding/data/models/boarding_model.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key, this.onPressed, required this.text, required this.index, required this.buttonText, this.onSignUpPressed});
  final void Function()? onPressed , onSignUpPressed;
  final String text;
  final String buttonText;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 57,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onPressed,
                child: Text(
                  text,
                  style:  TextStyles.semiBold20.copyWith(
                    color: Colors.white,
                    
                  ),
                ),
              ),
            ),
          ),
        if (index == boardingList.length - 1) Expanded(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0),
             child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: AppColors.primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: onSignUpPressed,
                child: Text(
                  buttonText,
                  style:  TextStyles.semiBold20.copyWith(
                    color: Colors.black,
                    
                  ),
                ),
              ),
           ),
         ),
        
        ],
      ),
    );
  }
}