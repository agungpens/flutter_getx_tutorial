import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/routes_name.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  {Get.toNamed(RouteName.product + '/1?nama=Barang 1')},
              child: Text('Product 1'),
            ),
            ElevatedButton(
              onPressed: () =>
                  {Get.toNamed(RouteName.product + '/2?nama=Barang 2')},
              child: Text('Product 2'),
            ),
            ElevatedButton(
              onPressed: () =>
                  {Get.toNamed(RouteName.product + '/3?nama=Barang 3')},
              child: Text('Product 3'),
            ),
          ],
        ),
      ),
    );
  }
}
