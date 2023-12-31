import 'package:ecommarce_single_vendor/core/class/handlingdataview.dart';
import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/imageasset.dart';
import 'package:ecommarce_single_vendor/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/constant/color.dart';
import '../../../controller/auth/verifycodesignup_controller.dart';
import '../../widget/auth/customtexttitleauth.dart';

class VerifyCodeSignup extends StatelessWidget {
  const VerifyCodeSignup  ({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignupControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text(
          "verificationCode".tr,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: AppColor.grey),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<VerifyCodeSignupControllerImp>(builder: (controller)=>
       HandlingDataRequest(statusRequest: controller.statusRequest, widget: Container(
         padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
         child: ListView(
           children: [
             CustomTextTitleAuth(
               title: "verifyCode".tr,
             ),
             const SizedBox(
               height: 10,
             ),
             CustomTextBodyAuth(
               text: "${"plsEnterTheDigitCodeSendTo".tr}${" "}${"hamza@gmail.com"}",
             ),
             const SizedBox(
               height: 20,
             ),
             OtpTextField(
               fieldWidth: 50.0,
               borderRadius: BorderRadius.circular(20),
               numberOfFields: 5,
               borderColor: Color(0xFF512DA8),
               //set to true to show as box or false to show as dash
               showFieldAsBox: true,
               //runs when a code is typed in
               onCodeChanged: (String code) {
                 //handle validation or checks here
               },
               //runs when every textfield is filled
               onSubmit: (String verificationCode) {
                 print("onsubmitEmail${Get.arguments['email']}");
                 controller.goToSuccessSignUp(Get.arguments['email'],verificationCode);
               }, // end onSubmit
             ),
           ],
         ),
       )),
    ));
  }
}
