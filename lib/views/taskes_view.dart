import 'package:flutter/material.dart';
import 'package:task_manager/constant.dart';
import 'package:task_manager/views/widgets/add_task_bottom_sheet.dart';
import 'package:task_manager/views/widgets/task_view_body.dart';

class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
       backgroundColor: kPrimaryColor,
        onPressed: () {
     showModalBottomSheet(
       shape: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    context: context, builder: (context){
     return const AddTaskToBottomSheet();
});
        },
        child: const Icon(Icons.add),
      ),
      body: const TaskViewBody()
    );
  }
}
