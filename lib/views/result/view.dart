import 'package:flutter/material.dart';
double result =0;
class Reslut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      height:150,
      width: 450,
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Align(
        alignment: Alignment.bottomRight,
          child: Text( Operations.result.toString(), style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),

    );
  }
}
class Operations{
  static double num1;
  static double num2;
  static double result;
  static String operator;

}
