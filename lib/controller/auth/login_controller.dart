import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/auth/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/class/crud.dart';
import '../../core/class/staturequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/remote/auth/signup.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  Crud crud = Crud();
  LoginData loginData = LoginData(Get.find());

  List data = [];
   StatusRequest? statusRequest;
  @override
  login()async {
    var formData = formstate.currentState;
    if (formData!.validate()) {
          statusRequest = StatusRequest.loading;
    update();
    var response = await loginData.postData(password.text, email.text);
        print("========================>>>login $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        // data.addAll(response["data"]);
        Get.offNamed(AppRoute.home);
      } else {
        Get.defaultDialog(
          title: "error".tr,
          middleText: "emailOrPasswordNotCorrect".tr
        );
        statusRequest =  StatusRequest.failure;
      }
    }
    update();
    } else {
      print("** not validate form");
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
