import 'package:flutter/material.dart';

class UtilFunctions{
  //navigation function
  static void navigateTo(Widget widget,BuildContext context){
    Navigator.push(context,
          MaterialPageRoute(builder: (context) => widget));
  }

  //go back
  static void goBack(BuildContext context){
    Navigator.of(context).pop();
  }
}