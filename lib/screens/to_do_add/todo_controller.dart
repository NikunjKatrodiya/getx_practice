import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_practice/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoController extends GetxController {
  List<ToDoModel> appData = [];
  SharedPreferences? sharedPreferences;
  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    getInstance();
    update();
    super.onInit();
  }

  getInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();
    getToDoData();
  }

  setDataInModel() {
    appData.add(ToDoModel(
        title: titleController.text, description: discriptionController.text));
    update();

    setDataInSF();
  }

  getToDoData() {
    if (sharedPreferences!.containsKey("toDoData")) {
      dynamic data = sharedPreferences!.getString("toDoData");
      appData = (jsonDecode(data) as List?)!
          .map((dynamic e) => ToDoModel.fromJson(e))
          .toList();
      update();
    }
  }

  setDataInSF() {
    sharedPreferences!.setString("toDoData", jsonEncode(appData));
    update();
    Get.back();
  }
}
