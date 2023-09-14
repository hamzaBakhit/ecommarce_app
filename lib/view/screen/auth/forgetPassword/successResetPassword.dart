import 'package:ecommarce_single_vendor/controller/auth/successresetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/imageasset.dart';
import '../../../widget/auth/custombuttonauth.dart';
import '../../../widget/auth/customtextbodyauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordImp controller  = Get.put( SuccessResetPasswordImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "success".tr,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Center(child: Icon(Icons.check_circle_outline, color: AppColor.primaryColor, size: 200,)),
            CustomTextBodyAuth(text: "signupproccesssucceed".tr),
            const SizedBox(height: 25,),
            CustomTextBodyAuth(text: "gotologin".tr),
            const Spacer(),
            CustomButtonAuth(text: "gotologin".tr, onPressed: (){
    controller.goToPageLogin();
            }),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  
  }
}