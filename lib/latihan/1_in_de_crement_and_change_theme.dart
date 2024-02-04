import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controllerC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme:
              controllerC.isDark.value ? ThemeData.light() : ThemeData.dark(),
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Tutorial"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Angka ${c.counter}",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => c.changeTheme(),
            tooltip: 'Change Theme',
            child: Icon(Icons.color_lens),
          ),
          FloatingActionButton(
            onPressed: () => c.increment(),
            tooltip: 'Plus',
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () => c.decrement(),
            tooltip: 'Min',
            child: Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            onPressed: () => c.reset(),
            tooltip: 'Min',
            child: Icon(Icons.reset_tv),
          ),
        ],
      ),
    );
  }
}
