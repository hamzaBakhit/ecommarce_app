import 'package:ecommarce_single_vendor/core/class/crud.dart';
import 'package:ecommarce_single_vendor/linkapi.dart';

class VerifyCodeSignupData{
  Crud crud;
  VerifyCodeSignupData(this.crud);

  postData(String email, String verifyCode)async{
    var response = await crud.postData(AppLink.verifyCodeSignup, {
      "email":  email,
      "verifycode": verifyCode,
    });
    return  response.fold((l) => l, (r) => r);
  }
}