import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/widget/drawer.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext contgitext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Center(
        child: Text(
          'Welcome to 30 Day Flutter  ',
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
