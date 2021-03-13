import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.colour,this.title,this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: colour,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200,
        height: 42,
        child: Text(title,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}