import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Dua')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  Get.toNamed(RouteName.page_3,
                      arguments: 'Ini data dari page 2');
                },
                child: Text('Next Page')),
            ElevatedButton(
                onPressed: () => {
                      // navigator!.pop(),
                      Get.back(), // pop()
                    },
                child: Text('Back')),
          ],
        ),
      ),
    );
  }
}
