import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task_manager/constant.dart';
import 'package:task_manager/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:task_manager/models/task_model.dart';
import 'package:task_manager/simple_bloc_observer.dart';
import 'package:task_manager/views/taskes_view.dart';

void main() async {
  // to initialize Hive
  await Hive.initFlutter();
  // to open the box that we use to store the data (Collection)
  await Hive.openBox(KTasksBox);
  Hive.registerAdapter(TaskModelAdapter());
 Bloc.observer = SimpleBlocObserver(); // to manage App States
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddTaskCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
             brightness: Brightness.dark
        ),
        home: TasksView(),
      ),
    );
  }
}

