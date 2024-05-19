

import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_form_field.dart';

class AddTaskToBottomSheet extends StatelessWidget {
  const AddTaskToBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , ),
      child: SingleChildScrollView(
        child: Column(
          children:  [
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
            const SizedBox(height: 16,),

          ],
        ),
      ),
    );
  }
}
