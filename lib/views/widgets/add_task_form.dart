import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/cubits/add_task_cubit/add_task_cubit.dart';
import 'package:task_manager/models/task_model.dart';

import 'custom_buttom.dart';
import 'custom_text_form_field.dart';

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({Key? key}) : super(key: key);

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  @override
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title , subTitle ;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            onSaved: (value){
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(height: 16,),
          CustomTextFormField(
            onSaved: (value){
              subTitle = value;
            },
            hintText: "Content",
            maxLines: 5,
          ),
          const SizedBox(height: 16,),
          CustomButton(
            onTap: (){
              if(formKey.currentState !. validate()) {
                formKey.currentState!.save();
                var taskModel =TaskModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.white70.value);
                BlocProvider.of<AddTaskCubit>(context).addTask(taskModel);
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }

            },
          ),
          const SizedBox(height: 16,),

        ],
      ),
    );
  }
}
