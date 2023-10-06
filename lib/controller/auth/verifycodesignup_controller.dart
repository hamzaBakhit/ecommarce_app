import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/auth/verifycodesignup.dart';
import 'package:get/get.dart';
import '../../core/class/crud.dart';
import '../../core/class/staturequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class VerifyCodeSignupController extends GetxController {
  checkEmail();
  goToSuccessSignUp(String email ,String verifycodesignup);
}

class VerifyCodeSignupControllerImp extends VerifyCodeSignupController {
   
    VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());
    Crud crud = Crud();
    StatusRequest statusRequest = StatusRequest.none;
  @override
  checkEmail() {}

  @override
  goToSuccessSignUp(email ,verifycodesignup)async {
     statusRequest = StatusRequest.loading;
     print("email=>$email");
    update();
    var response = await verifyCodeSignupData.postData(email, verifycodesignup);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        // data.addAll(response["data"]);
          Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
          title: "error".tr,
          middleText: "verifycodenotcorrect".tr
        );
        statusRequest =  StatusRequest.failure;
      }
    }
    update();
    //
  
  }

  @override
  void onInit() {

    super.onInit();
  }

  
}
