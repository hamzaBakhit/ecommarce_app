import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware{
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect (String? route){

      if(myServices.sharedPreferences.getString("onboarding") == "1"){
          return const RouteSettings(name: AppRoute.login);
      }
  }
} 