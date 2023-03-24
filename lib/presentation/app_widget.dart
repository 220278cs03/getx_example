import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lesson/presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MyHomePage(),
    );
  }
}
