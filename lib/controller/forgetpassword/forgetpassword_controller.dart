import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/class/crud.dart';
import '../../core/class/staturequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  checkEmail();

}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  Crud crud = Crud();
  LoginData loginData = LoginData(Get.find());

  List data = [];
  StatusRequest statusRequest = StatusRequest.none;
  @override
  checkEmail() async{
    var formData = formstate.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData( email.text);
      print("========================>>>checkemaildata $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          // data.addAll(response["data"]);
          Get.offNamed(AppRoute.verifyCode, arguments: {
            "email", email.text
          });
        } else {
          Get.defaultDialog(
              title: "error".tr,
              middleText: "emailNotFound".tr
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
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
