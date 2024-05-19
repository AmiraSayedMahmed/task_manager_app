

import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children:  [
          Text( title , style: const TextStyle(
            fontSize: 25,

          ),),
        const  Spacer(),
          CustomSearchIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}
