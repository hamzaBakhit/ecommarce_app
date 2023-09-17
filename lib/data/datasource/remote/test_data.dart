import 'package:ecommarce_single_vendor/core/class/crud.dart';
import 'package:ecommarce_single_vendor/linkapi.dart';

class TestData{
  Crud crud;
  TestData(this.crud);

  getData()async{
    var response = await crud.postData(AppLink.test, {});
    return  response.fold((l) => l, (r) => r);
  }
}