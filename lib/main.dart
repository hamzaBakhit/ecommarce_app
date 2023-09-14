import 'package:ecommarce_single_vendor/localization/changelocal.dart';
import 'package:ecommarce_single_vendor/localization/translation.dart';
import 'package:ecommarce_single_vendor/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';
import 'core/constant/routes.dart';
import 'routes.dart';
import 'view/screen/OnBoarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      theme: controller.appTheme,
      // routes: routes,
      getPages: routes,
      // initialRoute: AppRoute.onboarding,
    );
  }
}
