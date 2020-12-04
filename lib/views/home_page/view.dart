import 'package:calculator/views/Operator/view.dart';
import 'package:calculator/views/input/view.dart';
import 'package:calculator/views/result/view.dart';
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
                    Operations.result.toString(),
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )),
            ),
           // Reslut(),
            Input(),
            Operator(),
          ],
        ),
      ),
    );
  }
}
