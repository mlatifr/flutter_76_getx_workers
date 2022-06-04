import 'package:flutter/material.dart';
import 'package:flutter_76_getx_workers/contorllers/my_controllers.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final myC = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                myC.reset();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Terjadi sesuatu sebanyak : ${myC.count} x',
                  style: TextStyle(fontSize: 30),
                )),
            SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (_) => myC.change(),
              decoration: InputDecoration(border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}
