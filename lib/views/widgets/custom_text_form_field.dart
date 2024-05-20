


import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.hintText , this.onChanged ,  this.maxLines = 1, this.onSaved}) ;
  Function(String)? onChanged;
  final String? hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  //String? label;
  //bool? obsecure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
         maxLines: maxLines,
      onSaved: onSaved,
      validator: (value){
           if(value?.isEmpty ?? true){
             return 'Field is required' ;
           }
      },
      cursorColor: kPrimaryColor,
      // obscureText: obsecure!,
     // style: const TextStyle(color: Colors.white , fontSize: 20),
      // validator: (data){
      //   if(data!.isEmpty){
      //     return 'This field is required';
      //   }
      // },
     // onChanged: onChanged,

      decoration:  InputDecoration(

        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: kPrimaryColor
        ),

      /*  label: Text('$label'),
        labelStyle: const TextStyle(
            fontSize: 20,
            color: kPrimaryColor
        ),*/


      ),
    );
  }
}


OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide:  BorderSide(
        color: color ?? Colors.white,
      )
  );
}