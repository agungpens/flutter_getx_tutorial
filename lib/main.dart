import 'package:flutter/material.dart';
import 'package:getx_tutorial/pages/page_1.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
    );
  }
}
