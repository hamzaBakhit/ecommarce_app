import 'package:ecommarce_single_vendor/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(onBoardingList[i].title!,
              style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColor.black,
    ),
              ), 
          const SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            // width: 200,
            height: Get.width / 1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: AppColor.grey,
    ),
            ),
          )
        ],
      ),
    );
  }
}
