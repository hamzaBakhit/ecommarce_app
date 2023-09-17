import 'package:ecommarce_single_vendor/controller/test_controller.dart';
import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'core/class/handlingdataview.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      
      appBar: AppBar(title: const Text("title"), backgroundColor: AppColor.primaryColor,),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (_, index) {
              return Text("${controller.data}");
            },
          ),
        );
        // if(controller.statusRequest == StatusRequest.loading){
        //   return const Center(child: CircularProgressIndicator(),);
        // }else if (controller.statusRequest == StatusRequest.failure){
        //   return const Center(child: Text("offilne "),);
        // }else if (controller.statusRequest == StatusRequest.serverFailure){
        //   return const Center(child: Text("server "),);
        // }else if (controller.statusRequest == StatusRequest.failure){
        //   return const Center(child: Text("No data"),);
        // }else{
        //   return ListView.builder(
        //     itemCount: controller.data.length,
        //     itemBuilder: (_,index){
        //       return Text("${controller.data}");
        //     },
        //   );
        // }
      }),
    );
  }
}
