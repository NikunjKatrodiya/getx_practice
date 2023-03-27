import 'dart:convert';




import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_practice/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController{
  List<ToDoModel> appData = [];
  SharedPreferences? sharedPreferences;

@override
  void onInit() {
    // TODO: implement onInit
  getInstance();
    super.onInit();
  }
getInstance() async {

  sharedPreferences = await SharedPreferences.getInstance();

  getToDoData();
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

}