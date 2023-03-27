import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screens/home/home_controller.dart';

import 'package:getx_practice/utils/routes_name.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        //controller.counterAdd();
        Get.toNamed(RoutesName.toDoAddScreen);


      },child: const Icon(Icons.add),),
      body: ListView.separated(
          itemBuilder: (context, index) => const Divider(),
          separatorBuilder: (context, index) => ListTile(
            title: Text("${controller.appData[index].title}"),
            subtitle: Text("${controller.appData[index].description}"),
          ),
          itemCount: controller.appData.length),
    );
  }
}
