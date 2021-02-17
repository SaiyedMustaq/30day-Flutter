import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pavan_kumar_flutter_30_days/utils/routs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRousts.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/image/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter User Name";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter Password";
                      } else if (value.length < 6) {
                        return "Password length should be atlease 6";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(
                            changeButton ? 50 : 5,
                          ),
                        ),
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
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
