import 'package:ecommarce_single_vendor/view/screen/OnBoarding.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/home.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/login.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/resetpassword.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/successResetPassword.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/success_signup.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/verifycode.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/verifycodesignup.dart';
import 'package:ecommarce_single_vendor/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/signup.dart';

List<GetPage<dynamic>> routes = [
  //auth pages
  GetPage(name: "/" , page: ()=> const Language(), middlewares: [
    MyMiddleware()
  ]),
  GetPage(name: AppRoute.login , page: ()=> const Login()),
  GetPage(name: AppRoute.signup , page: ()=> const SignUp()),
  GetPage(name: AppRoute.forgetPassword , page: ()=> const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode , page: ()=> const VerifyCode()),
  GetPage(name: AppRoute.resetPassword , page: ()=> const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword , page: ()=> const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp , page: ()=> const SuccessSignUp()),
  GetPage(name: AppRoute.verifycodesignup , page: ()=> const VerifyCodeSignup()),
  GetPage(name: AppRoute.successResetPassword , page: ()=> const SuccessResetPassword()),
  //onboarding pages
    GetPage(name: AppRoute.onboarding , page: ()=> const OnBoarding()),
    GetPage(name: AppRoute.language , page: ()=> const Language()),
    //home 
     GetPage(name: AppRoute.home , page: ()=> const HomePage()),
];