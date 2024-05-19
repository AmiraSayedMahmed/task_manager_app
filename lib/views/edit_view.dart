

import 'package:flutter/material.dart';
import 'package:task_manager/views/widgets/custom_app_bar.dart';

import 'widgets/custom_buttom.dart';
import 'widgets/custom_text_form_field.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50,),
            const CustomAppBar(title: "Edit Task", icon: Icons.check,),
            const SizedBox(
              height: 32,
            ),
            CustomTextFormField(
              hintText: "Title",

            ),
            const SizedBox(height: 16,),
            CustomTextFormField(
              hintText: "Content",
              maxLines: 5,
            ),
            const SizedBox(height: 16,),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
