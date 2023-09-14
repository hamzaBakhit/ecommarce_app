import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class CustoTextSignUpOrSignIn extends StatelessWidget {
  const CustoTextSignUpOrSignIn({super.key, required this.textone, required this.texttwo, required this.onTab,});
final  String textone;
final  String texttwo;
final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
        ),
        InkWell(
          onTap: onTab,
            child: Text(
          texttwo,
          style: const TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}
