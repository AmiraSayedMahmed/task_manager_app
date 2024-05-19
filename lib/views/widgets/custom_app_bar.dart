

import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16),
      child: Row(
        children:  [
          Text('Tasks' , style: TextStyle(
            fontSize: 25,

          ),),
          Spacer(),
          CustomSearchIcon()
        ],
      ),
    );
  }
}
