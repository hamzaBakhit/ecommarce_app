import 'package:ecommarce_single_vendor/core/class/crud.dart';
import 'package:ecommarce_single_vendor/linkapi.dart';

class CheckEmailData{
  Crud crud;
  CheckEmailData(this.crud);

  postData( String email)async{
    var response = await crud.postData(AppLink.checkEmail, {
      "email": email,
    });
    return  response.fold((l) => l, (r) => r);
  }
}