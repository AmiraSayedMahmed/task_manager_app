import 'package:hive/hive.dart';

//To generate Type Adapter
part 'task_model.g.dart'; // The name of file that will be Generate
// to generate this file ==> put this command in terminal: dart pub add dev:build_runner
@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  TaskModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
