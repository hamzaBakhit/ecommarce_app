import 'package:ecommarce_single_vendor/data/datasource/static/static.dart';
import 'package:ecommarce_single_vendor/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices = Get.find();

 @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1){
      myServices.sharedPreferences.setString("onboarding","1");
        Get.offAllNamed(AppRoute.login);
    }else {
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}
