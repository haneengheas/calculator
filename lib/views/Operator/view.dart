import 'package:calculator/views/result/view.dart';
import 'package:flutter/material.dart';
import 'package:calculator/views/input/view.dart';
class Operator extends StatefulWidget {
  @override
  _OperatorState createState() => _OperatorState();
}
String operator ;
class _OperatorState extends State<Operator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 420,
      color: Colors.black26,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                     Operations.operator= "+";
                  });
                },
                child: Container(
                  padding: EdgeInsets.only( top: 10 , left: 2 , right: 5),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.pink,
                  ),
                  child: Text('+', style: TextStyle(fontSize: 50),textAlign: TextAlign.center ,),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    Operations.operator="-";
                  });
                },
                child: Container(
                  padding: EdgeInsets.only( top: 10 , left: 2 , right: 5),

                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.pink,
                  ),
                  child: Text('-', style: TextStyle(fontSize: 50),textAlign: TextAlign.center ,),
                ),
              ),
              Container(
                padding: EdgeInsets.only( top: 10 , left: 2 , right: 5),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.pink,
                ),
                child: Text('*', style: TextStyle(fontSize: 50),textAlign: TextAlign.center ,),
              ),
              Container(
                padding: EdgeInsets.only( top: 10 , left: 2 , right: 5),

                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.pink,
                ),
                child: Text('/', style: TextStyle(fontSize: 50),textAlign: TextAlign.center ,),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              print (num1);
              print(num2);
              print(operator);
             if (Operations.operator=='+'){
               Operations.result= Operations.num1+Operations.num2;
             }
             else if (Operations.operator=='-'){
                Operations.result= Operations.num1- Operations.num2;
              }
              setState(() {
                print ('x');
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 40),
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              child: Text('=', style: TextStyle(fontSize: 50),textAlign: TextAlign.center ,),


            ),
          )
        ],
      ),
    );
  }
}
