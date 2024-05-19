

import 'package:flutter/material.dart';

import 'widgets/custom_buttom.dart';
import 'widgets/custom_text_form_field.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}
