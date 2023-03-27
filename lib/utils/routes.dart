import 'package:get/get.dart';
import 'package:getx_practice/screens/home/home_binding.dart';
import 'package:getx_practice/screens/home/home_screen.dart';
import 'package:getx_practice/screens/to_do_add/to_do_add_screen.dart';
import 'package:getx_practice/screens/to_do_add/todo_binding.dart';
import 'package:getx_practice/utils/routes_name.dart';

List<GetPage<dynamic>> routesList=[
  GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen(),binding: HomeBinding(),),
  GetPage(name: RoutesName.toDoAddScreen, page: () => const ToDoAddScreen(),binding: ToDOBinding(),)
];