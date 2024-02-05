import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/page_2.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Satu')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => {
                      // navigator!.push(
                      //   MaterialPageRoute(builder: (_) => PageDua()),
                      // )

                      Get.off(PageDua()) // push replacement
                    },
                child: Text('Next Page')),
          ],
        ),
      ),
    );
  }
}
