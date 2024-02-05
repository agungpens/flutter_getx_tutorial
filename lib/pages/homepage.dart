import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepages')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => {
                      Get.toNamed(RouteName.product) // push replacement
                    },
                child: Text('Get All Product')),
            ElevatedButton(
                onPressed: () => {
                      Get.snackbar('ini Judul', 'ini Pesan nya',
                          icon: Icon(Icons.check_circle_outline),
                          animationDuration: Duration(milliseconds: 200),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.lightGreen),
                    },
                child: Text('Show Snack Bar')),
          ],
        ),
      ),
    );
  }
}
