import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/page_3.dart';

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
                  // navigator!.push(
                  //   MaterialPageRoute(builder: (_) => PageTiga()),
                  // )

                  // Get.to(PageTiga(), arguments: 'Ini data dari page 2')
                  var data = await Get.to(PageTiga());
                  print('Hasil $data');
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
