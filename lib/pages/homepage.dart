// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                          duration: Duration(seconds: 200),
                          backgroundColor: Colors.lightGreen),
                    },
                child: Text('Show Snack Bar')),
            ElevatedButton(
                onPressed: () => {
                      Get.defaultDialog(
                          title: "Confirmation",
                          middleText: "apakah ini pesan ?",
                          textCancel: "Bukan",
                          textConfirm: "Benar",
                          onConfirm: () {
                            Get.back();
                            Get.snackbar('New Message', 'OK');
                          }),
                    },
                child: Text('Show dialog')),
            ElevatedButton(
                onPressed: () => {
                      Get.bottomSheet(Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          color: Colors.grey,
                          child: Center(
                            child: ListView(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Tambahkan")),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Tambahkan")),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Tambahkan")),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      label: Text("Tambahkan")),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue, // background
                                    onPrimary: Colors.white, // foreground
                                  ),
                                  onPressed: () {},
                                  child: Text('Simpan Data'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                    },
                child: Text('Bottom Sheet')),
          ],
        ),
      ),
    );
  }
}
