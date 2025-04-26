import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_colors.dart';

abstract class AppTextStyles
{
  static  TextStyle appBarTitle({Color color = AppColors.green}) => TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: color,
  );
}