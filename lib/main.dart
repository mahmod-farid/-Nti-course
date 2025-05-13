import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nti_course/core/cache/cache_data.dart';
import 'package:nti_course/core/cache/cache_helper.dart';
import 'package:nti_course/core/cubit/image_manager_view.dart';
import 'package:nti_course/core/translation/translation_helper.dart';
import 'package:nti_course/core/utils/app_colors.dart';
import 'package:nti_course/core/utils/app_text_styles.dart';
import 'package:nti_course/features/auth/manager/user_cubit/user_cubit.dart';
import 'package:nti_course/features/auth/views/login_view.dart';
import 'package:nti_course/features/auth/views/register_view.dart';
import 'package:nti_course/features/auth/views/widgets/login_view_TODO.dart';
import 'package:nti_course/features/auth/views/widgets/register_view_TODO.dart';


void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await CacheHelper.init();
    await TranslationHelper.setLanguage();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: GetMaterialApp(
        locale: Locale(CacheData.lang!),
        translations: TranslationHelper(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: AppTextStyles.fontFamily,
            scaffoldBackgroundColor: AppColors.primaryLight
        ),
        home:RegisterViewTODO()

      ),
    );
  }
}
