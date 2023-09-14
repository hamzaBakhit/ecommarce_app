import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SuccessSignupController extends GetxController{

  goToPageLogin();
}

class SuccessSignupControllerImp extends SuccessSignupController{
  @override
  goToPageLogin(){
    Get.offAllNamed(AppRoute.login);
  }
}