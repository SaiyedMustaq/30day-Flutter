import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  //entry method point
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegitables(isHave: true);
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (contex) => LoginPage(),
      },
    );
  }
}

bringVegitables({@required bool isHave, int reqiest = 100}) {
  print("$isHave $reqiest");
}
