import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

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

                      Get.offNamed(RouteName.page_2) // push replacement
                    },
                child: Text('Next Page')),
          ],
        ),
      ),
    );
  }
}
