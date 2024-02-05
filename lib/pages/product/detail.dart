import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Product')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID : ${Get.parameters['id']}"),
            Text("Nama Barang : ${Get.parameters['nama']}"),
          ],
        ),
      ),
    );
  }
}
