
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_colors.dart';
import 'package:nti_course/core/utils/app_text_styles.dart';

class CustomFilledBtn extends StatelessWidget {
  const CustomFilledBtn({super.key,
    required this.onPressed, required this.text});

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
              shadowColor: AppColors.primary,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)
              )
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
            child: Text(
              text,
              style: AppTextStyles.filledBtnText,
            ),
          )
      ),
    );
  }
}