import 'package:ecommarce_single_vendor/core/class/crud.dart';
import 'package:ecommarce_single_vendor/linkapi.dart';

class ResetPasswordData{
  Crud crud;
  ResetPasswordData(this.crud);

  postData(String password, String email)async{
    var response = await crud.postData(AppLink.resetPassword, {
      "password": password,
      "email": email,
    });
    return  response.fold((l) => l, (r) => r);
  }
}