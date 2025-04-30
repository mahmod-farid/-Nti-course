import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_colors.dart';

abstract class AppTextStyles
{
  static const String fontFamily = "Lexenda_Deca";
  static TextStyle x = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.black
  );
  static TextStyle taskTitleData = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.grey
  );

  static  TextStyle appBarTitle({Color color = AppColors.primary}) => TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: color,
  );
}