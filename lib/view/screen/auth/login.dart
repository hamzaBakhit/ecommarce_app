import 'package:ecommarce_single_vendor/controller/auth/signup-controller.dart';
import 'package:ecommarce_single_vendor/core/class/handlingdataview.dart';
import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/imageasset.dart';
import 'package:ecommarce_single_vendor/core/functions/valiedinput.dart';
import 'package:ecommarce_single_vendor/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/lgooauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Text(
            "Login",
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
            child: GetBuilder<LoginControllerImp>(
                builder: (controller) => HandlingDataRequest(
                    statusRequest: controller.statusRequest,
                    widget: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const LogoAuth(),
                            CustomTextTitleAuth(
                              title: "2".tr,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextBodyAuth(
                              text: "3".tr,
                            ),
                            const SizedBox(
                              height: 65,
                            ),
                            CustomTextFormAuth(
                              isNumber: false,
                              valied: (val) {
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
                            CustomTextFormAuth(
                              isNumber: false,
                              valied: (val) {
                                return valiedInput(val!, 5, 30, "password");
                              },
                              labelText: "Password",
                              hintText: "Enter your password",
                              iconData: Icons.lock_outline,
                              textEditingController: controller.password,
                            ),
                            InkWell(
                              onTap: () {
                                controller.goToForgetPassword();
                              },
                              child: Text(
                                "4".tr,
                                textAlign: TextAlign.end,
                              ),
                            ),
                            CustomButtonAuth(
                              onPressed: () {
                                controller.login();
                              },
                              text: "5".tr,
                            ),
                            CustoTextSignUpOrSignIn(
                              textone: "6".tr,
                              texttwo: "7".tr,
                              onTab: () {
                                controller.goToSignUp();
                              },
                            ),
                          ],
                        ),
                      ),
                    )))));
  }
}
