import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:task_manager/cubits/add_task_cubit/add_task_cubit.dart';

import 'add_task_form.dart';
import 'custom_buttom.dart';
import 'custom_text_form_field.dart';

class AddTaskToBottomSheet extends StatelessWidget {
  const AddTaskToBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,),
      child: BlocConsumer<AddTaskCubit, AddTaskState>(
        listener: (context, state) {
          if (state is AddTaskFailure){
           print("Failed ${state.errorMsg}"); 
          }
          if (state is AddTaskSuccess){

          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddTaskLoading ? true : false,
          child: const SingleChildScrollView(child: AddTaskForm()));
        },
      ),
    );
  }
}

