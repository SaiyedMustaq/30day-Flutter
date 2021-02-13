import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/home_page.dart';

void main() {
  //entry method point
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: HomePage());
  }
}
