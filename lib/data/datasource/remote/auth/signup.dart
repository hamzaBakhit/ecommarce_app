import 'package:ecommarce_single_vendor/core/class/crud.dart';
import 'package:ecommarce_single_vendor/linkapi.dart';

class SignupData{
  Crud crud;
  SignupData(this.crud);

  postData(String username, String password, String email, String phone)async{
    var response = await crud.postData(AppLink.signup, {
      "username":  username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return  response.fold((l) => l, (r) => r);
  }
}