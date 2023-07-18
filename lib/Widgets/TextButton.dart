import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
   ButtonField({required this.text , required this.onPressed});

   final VoidCallback onPressed;

  String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(100),
        ),
        width: double.infinity,
        height: 60,
        child:
        Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
