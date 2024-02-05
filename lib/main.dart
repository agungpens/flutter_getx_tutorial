import 'package:flutter/material.dart';
import 'package:getx_tutorial/pages/homepage.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePages(),
      getPages: AppRoutePage.pages,
    );
  }
}
