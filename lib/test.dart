import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  @override
  void initState() {
     
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: Text("test page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            
            //
            
          ],
        ),
      ),
    );
  }
}
