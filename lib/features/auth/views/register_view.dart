import 'package:flutter/material.dart';
import 'package:nti_course/core/localization/app_strings.dart';
import 'package:nti_course/core/utils/app_pading.dart';
import 'package:nti_course/core/utils/app_sizes.dart';
import 'widgets/default_auth_form_field.dart';
import 'package:nti_course/core/widgets/default_btn.dart';
import 'package:nti_course/core/utils/app_assets.dart';
import 'package:flutter_svg/svg.dart';


class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F5F4),
       body:
      // Padding(
      //   padding: const EdgeInsets.all(10.0),
        Column(
          children: [
            Padding(
              padding: AppPadings.pagePadding,
              child:
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.44,
                  width: double.infinity,
                  child: SvgPicture.asset(AppAssets.palestin , fit: BoxFit.fill),
              ),
            ),
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
                  text: AppStrings.register.toUpperCase(), onPressed: () {}),
            )
          ],
        ),
      );

  }
}
