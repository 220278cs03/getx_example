import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lesson/application/controller.dart';
import 'package:getx_lesson/presentation/pages/test_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: Get.width/2,
                color: Colors.red,
            ),
            GetBuilder<HomeController>(builder: (context){
              return Text(
                controller.count.toString(),
                style: TextStyle(color: Colors.black),
              );
            })
          ]
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: (){
              Get.changeThemeMode(ThemeMode.light);
            },
            child: const Icon(Icons.light_mode),
          ),
          FloatingActionButton(
            onPressed: (){
              Get.changeThemeMode(ThemeMode.dark);
            },
            child: const Icon(Icons.dark_mode),
          ),
          FloatingActionButton(
            onPressed: (){
              controller.increment();
              //Get.bottomSheet(Container(height: 200, color: Colors.yellow,));
              //Get.dialog(AlertDialog(title: Text("Dialog"),));
              //Get.snackbar("Text", "message", backgroundColor: Colors.white70);
              //Get.to(TestPage());
              //Get.defaultDialog(title: "Hello", textCancel: "Back");
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
