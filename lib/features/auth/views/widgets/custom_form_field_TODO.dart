import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_course/core/helper/my_validator_TODO.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.validator,
    required this.controller, this.obscureText = false, this.suffixIcon});
  final AppValidator validator;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator.validate,
      obscureText: obscureText,
      decoration: InputDecoration(
          suffixIcon: suffixIcon
      ),

    );
  }
}