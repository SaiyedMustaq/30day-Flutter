import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/pages/login_page.dart';
import 'package:pavan_kumar_flutter_30_days/utils/routs.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/login",
      routes: {
        MyRousts.homeRoute: (context) => HomePage(),
        MyRousts.loginRoute: (contex) => LoginPage(),
      },
    );
  }
}

bringVegitables({@required bool isHave, int reqiest = 100}) {
  print("$isHave $reqiest");
}
