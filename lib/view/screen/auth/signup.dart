import 'package:ecommarce_single_vendor/controller/auth/signup-controller.dart';
import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/imageasset.dart';
import 'package:ecommarce_single_vendor/core/functions/alertexitapp.dart';
import 'package:ecommarce_single_vendor/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constant/color.dart';
import '../../../core/functions/valiedinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/lgooauth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "7".tr,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) =>
        controller.statusRequest == StatusRequest.loading?
        Center(child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250),):
        Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomTextTitleAuth(
                title: "2".tr,
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
               CustomTextFormAuth(
                isNumber: false,
                valied: (val){
                    return valiedInput(val!, 5, 100, "username");
                },
                labelText: "User name",
                hintText: "Enter username",
                iconData: Icons.person_2_outlined,
                textEditingController: controller.username,
              ),
               const SizedBox(
                height: 20,
              ),
               CustomTextFormAuth(
                isNumber: false,
                valied: (val){
                   return valiedInput(val!, 5, 100, "email");
                },
                labelText: "Email",
                hintText: "Enter your email",
                iconData: Icons.email_outlined,
                textEditingController: controller.email,
              ),
              const SizedBox(
                height: 20,
              ),
              //
               CustomTextFormAuth(
                isNumber: true,
                valied: (val){
                   return valiedInput(val!, 10, 15, "phone");
                },
                labelText: "Phone",
                hintText: "Enter your phone number",
                iconData: Icons.phone,
                textEditingController: controller.phonenumber,
              ),
              const SizedBox(
                height: 20,
              ),
              //
               CustomTextFormAuth(
                isNumber: false,
                valied: (val){
                   return valiedInput(val!, 5, 100, "password");
                },
                labelText: "Password",
                hintText: "Enter your password",
                iconData: Icons.lock_outline,
                textEditingController: controller.password,
              ),
              CustomButtonAuth(
                onPressed: () {
                  controller.signup();
                },
                text: "7".tr,
              ),
              CustoTextSignUpOrSignIn(textone: "10".tr,texttwo: "9".tr, onTab: (){
              controller.goToSignIn();
             },),
             
            ],
          ),
        ),
      ),
   )) );
  }
}
