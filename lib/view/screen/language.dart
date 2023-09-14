import 'package:ecommarce_single_vendor/view/widget/language/custombuttonlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';
import '../../core/constant/routes.dart';
import '../../localization/changelocal.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("1".tr, style:  Theme.of(context).textTheme.bodyText1),
           CustomButtonLang(textButton: "AR",onPressed: (){
            controller.changeLanguage("ar");
            Get.toNamed(AppRoute.onboarding);
           },),
           CustomButtonLang(textButton: "EN",onPressed: (){
            controller.changeLanguage("en");
            Get.toNamed(AppRoute.onboarding);
           },),
          ],
        ),
      ),
    );
  }
}
