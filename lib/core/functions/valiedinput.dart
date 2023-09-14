import 'package:get/get.dart';

valiedInput(String val, int min, int max, String type){


  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "notvaliedusername".tr;
    }
  }


  if(type == "email"){
    if(!GetUtils.isEmail(val)){
      return "notvaliedemail".tr;
    }
  }

  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "notvaliedphonenumber".tr;
    }
  }

  if (val.isEmpty){
    return "cannotbeempty".tr;
  }

  if (val.length < min){
    return "${"valuecannotbelessthan".tr}${val.length}";
  }

  if (val.length > max){
    return "${"valuecannotbelargerthan".tr}${val.length}";
  }
}