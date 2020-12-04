import 'package:calculator/core/operators.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              height: 150,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.black26,
              ),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    Operators.result.toString(),
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
            ),
            // Reslut(),
            Container(
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
                        onChanged: (value) {
                          setState(() {
                            Operators.num1 = double.parse(value);
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
                        onChanged: (value) {
                          setState(() {
                            Operators.num2 = double.parse(value);
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
            ),
            Container(
              height: 350,
              width: 420,
              color: Colors.black26,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "+";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.pink,
                          ),
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Operators.operator = "-";
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.pink,
                          ),
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 50),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.pink,
                        ),
                        child: Text(
                          '*',
                          style: TextStyle(fontSize: 50),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 2, right: 5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.pink,
                        ),
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 50),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (Operators.operator == '+') {
                        Operators.result = Operators.num1 + Operators.num2;
                      } else if (Operators.operator == '-') {
                        Operators.result = Operators.num1 - Operators.num2;
                      }
                      setState(() {
                        print('x');
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
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}