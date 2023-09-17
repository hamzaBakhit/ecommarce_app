import 'package:ecommarce_single_vendor/core/class/staturequest.dart';

handlingData(response ){
  if(response is StatusRequest){
    return response;
  }else{
    return StatusRequest.success;
  }
}