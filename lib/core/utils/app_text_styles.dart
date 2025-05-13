import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_colors.dart';

abstract class AppTextStyles
{
  static const fontFamily = "Lexenda Deca";
  static TextStyle filledBtnText = TextStyle(
    fontSize: 19,
      fontWeight: FontWeight.w300,
      color: AppColors.black
  );
}