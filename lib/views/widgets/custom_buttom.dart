

import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap , this.isLoading = false}) : super(key: key);
  final void Function()? onTap;
    final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child:isLoading? const CircularProgressIndicator(color: Colors.white,): const Text('Add' , style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
