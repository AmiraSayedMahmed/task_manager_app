
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/constant.dart';
import 'package:task_manager/models/task_model.dart';
part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
  addTask(TaskModel task) async {
    emit(AddTaskLoading());

    try {
      var taskBox = Hive.box<TaskModel>(KTasksBox);
      await taskBox.add(task);
      emit(AddTaskSuccess());

    } on Exception catch (e) {
      emit(AddTaskFailure(e.toString()));
    }
  }
}
