import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 25;
  double day = 322;
  String name = "Saiyed";
  num data = 12.3; //contain both int double
  var daya = "Tuesday"; // all type of variable

  static const double pi = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Center(
        child: Text(
          'Welcome to $day Days of flutter $name',
          style: TextStyle(
            fontSize: 50,
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
