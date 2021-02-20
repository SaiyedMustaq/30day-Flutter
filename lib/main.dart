import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/pages/login_page.dart';
import 'package:pavan_kumar_flutter_30_days/utils/routs.dart';
import 'package:pavan_kumar_flutter_30_days/widget/themes.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: MyThemed.lightthemeData(context),
      darkTheme: MyThemed.darkthemeData(context),
      initialRoute: "/home",
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
