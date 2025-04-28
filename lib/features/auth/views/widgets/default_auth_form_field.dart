import 'package:flutter/material.dart';
import 'package:nti_course/core/utils/app_borders.dart';
import 'package:nti_course/core/utils/app_colors.dart';
import 'package:nti_course/core/utils/app_pading.dart';

class DefaultAuthFormField extends StatelessWidget {
  const  DefaultAuthFormField({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadings.formFieldBottom,
      child: TextFormField(
        controller: controller ,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: AppBorders.formFieldBorderRadius,
              borderSide: const BorderSide(
                  color: AppColors.grey
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: AppBorders.formFieldBorderRadius,
                borderSide: BorderSide(
                    color: AppColors.primary
                )
            )
        ),
      ),
    );
  }
}