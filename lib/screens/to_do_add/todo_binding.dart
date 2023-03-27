import 'package:get/get.dart';
import 'package:getx_practice/screens/to_do_add/todo_controller.dart';

class ToDOBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ToDoController>(ToDoController());

  }
  
}