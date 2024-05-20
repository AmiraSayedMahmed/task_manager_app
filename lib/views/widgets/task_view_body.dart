import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'task_list.dart';
class TaskViewBody extends StatelessWidget {
  const TaskViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(height: 50,),
          CustomAppBar(icon: Icons.search, title: "Taskes",),
          Expanded(child: TaskList()),
  ],

      ),
    );
  }
}



