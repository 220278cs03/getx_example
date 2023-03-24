import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Page"),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.back();
      },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
