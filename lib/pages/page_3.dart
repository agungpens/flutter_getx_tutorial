import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

class PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Tiga')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => {
                      // navigator!.push(
                      //   MaterialPageRoute(builder: (_) => PageEmpat()),
                      // )
                      Get.offAllNamed(
                          RouteName.page_4) // push replacement Until
                    },
                child: Text('Next Page')),
            ElevatedButton(
                onPressed: () => {
                      // navigator!.pop(),
                      Get.back(result: 'Ini data dari page 3 mas'),
                    },
                child: Text('Back')),
            Text(Get.arguments.toString() == 'null'
                ? 'Tidak ada data dari page 2'
                : Get.arguments.toString())
          ],
        ),
      ),
    );
  }
}
