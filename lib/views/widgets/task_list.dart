
import 'package:flutter/material.dart';

import 'custom_task_item.dart';
class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context , index){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: TaskItem(),
        );
      }),
    );
  }
}
