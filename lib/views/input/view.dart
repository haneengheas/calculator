import 'package:calculator/views/result/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
double num1;
double num2;
class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}
class _InputState extends State<Input> {

  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 150,
      color: Colors.black26,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    Operations.num1=double.parse(value);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: '  Enter fisrt number',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    Operations.num2=double.parse(value);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Enter second  number',
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
