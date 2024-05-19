import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task_manager/constant.dart';
import 'package:task_manager/views/taskes_view.dart';

void main() async {
  // to initialize Hive
  await Hive.initFlutter();
  runApp(const MyApp());
  // to open the box that we use to store the data (Collection)
  await Hive.openBox(KTasksBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
           brightness: Brightness.dark
      ),
      home: TasksView(),
    );
  }
}

