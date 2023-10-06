import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/auth/signup.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/class/crud.dart';
import '../../core/class/staturequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController phonenumber;
  late TextEditingController email;
  late TextEditingController password;

  Crud crud = Crud();
  SignupData signupData = SignupData(Get.find());

  List data = [];
   StatusRequest statusRequest = StatusRequest.none;

  @override
  signup() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await signupData.postData(
        username.text, password.text, email.text, phonenumber.text);
        print("========================>>>signup $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        // data.addAll(response["data"]);
        Get.offNamed(AppRoute.verifycodesignup, arguments: {
          "email": email.text,
        });
      } else {
        Get.defaultDialog(
          title: "warning".tr,
          middleText: "emailOrPhoneIsAlreadyExists".tr
        );
        statusRequest =  StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phonenumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phonenumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
