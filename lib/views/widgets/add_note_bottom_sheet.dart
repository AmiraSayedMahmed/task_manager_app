

import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_form_field.dart';

class AddNoteToBottomSheet extends StatelessWidget {
  const AddNoteToBottomSheet({Key? key}) : super(key: key);

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
              maxLines: 15,
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
