import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? textEditingController;
  final String? Function(String?) valied;
  final bool isNumber;
  const CustomTextFormAuth  ({super.key, required this.hintText, required this.labelText, required this.iconData, required this.textEditingController, required this.valied, required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        keyboardType: isNumber?  const TextInputType.numberWithOptions(decimal: true): TextInputType.text,
        validator: valied,
        controller: textEditingController,
                decoration:  InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(fontSize: 14,),
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    child:  Text(labelText),
                    ),
                  suffixIcon:  Icon(iconData) ,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
    );
  }
}