import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screens/to_do_add/todo_controller.dart';

class ToDoAddScreen extends GetView<ToDoController> {
  const ToDoAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: controller.titleController,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Enter Title",
                  labelText: "Title"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.discriptionController,
              minLines: 4,
              maxLines: 7,
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Enter Title",
                  alignLabelWithHint: true,
                  labelText: "Title"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.setDataInModel();

              },
              child: const Text("Add ToDo"),
            ),
          ],
        ),
      ),
    );
  }
}
