import 'package:flutter/material.dart';
import 'package:nti_course/core/localization/app_strings.dart';
import 'package:nti_course/core/utils/app_pading.dart';
import 'package:nti_course/core/utils/app_sizes.dart';
import 'widgets/default_auth_form_field.dart';
import 'package:nti_course/core/widgets/default_btn.dart';

class RegisterView extends StatelessWidget {
   RegisterView({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text (AppStrings.register),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppPadings.pagePadding,
        child: Column(
          children: [
            SizedBox(height: AppSizes.spaceAboveForm),
            DefaultAuthFormField(
              controller: nameController,
            ),
            DefaultAuthFormField(
              controller: emailController,
            ),
            DefaultAuthFormField(
              controller: passwordController,
            ),
            DefaultAuthFormField(
              controller: passwordConfirmController,
            ),

            SizedBox(
              width: double.infinity,
              child: DefaultBtn(
              text: AppStrings.register.toUpperCase(),
              onPressed:(){}
              ),
            )

          ],
        ),
      ),
    );
  }
}



