import 'package:ecommarce_single_vendor/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommarce_single_vendor/controller/auth/signup-controller.dart';
import 'package:ecommarce_single_vendor/core/class/handlingdataview.dart';
import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    print("this is forget screen");
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "forgetPassword".tr,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) =>

         HandlingDataRequest(statusRequest: controller.statusRequest, widget: Container(
           padding:
           const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
                   text: "8".tr,
                 ),
                 const SizedBox(
                   height: 65,
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 CustomTextFormAuth(
                   isNumber: false,
                   valied: (val) {
                     return valiedInput(val!, 6, 100, "email");
                   },
                   labelText: "Email",
                   hintText: "Enter your email",
                   iconData: Icons.email_outlined,
                   textEditingController: controller.email,
                 ),
                 CustomButtonAuth(
                   onPressed: () {
                     controller.checkEmail();
                   },
                   text: "check".tr,
                 ),
               ],
             ),
           ),
         ))
      ),
    );
  }
}
