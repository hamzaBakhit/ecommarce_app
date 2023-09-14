import 'package:ecommarce_single_vendor/controller/auth/resetpassword_controller.dart';
import 'package:ecommarce_single_vendor/controller/auth/signup-controller.dart';
import 'package:ecommarce_single_vendor/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/functions/valiedinput.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';
import '../../../widget/auth/lgooauth.dart';
import '../../../widget/auth/textsignup.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword  ({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "resetPassword".tr,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomTextTitleAuth(
                title: "checkEmail".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: "plsEnterNewPassword".tr,
              ),
             
               const SizedBox(
                height: 20,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valied: (val){
                   return valiedInput(val!, 6, 15, "password");
                },
                labelText: "password".tr,
                hintText: "enterYourPassword".tr,
                iconData: Icons.lock_outline,
                textEditingController: controller.password,
              ),
        
              CustomTextFormAuth(
                isNumber: false,
                valied: (val){
                   return valiedInput(val!, 5, 100, "password");
                },
                labelText: "password".tr,
                hintText: "reEnterYourPassword".tr,
                iconData: Icons.lock_outline,
                textEditingController: controller.password,
              ),
              CustomButtonAuth(
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                text: "check".tr,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
