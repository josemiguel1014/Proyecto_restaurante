import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(45, 227, 80, 89),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/signup.png"),
                width: 120,
                height: 120,
              ),
              Spacer(flex: 2),
              titleText("Sign Up"),
              SizedBox(height: 8),
              subTitleText("Create una cuenta, es gratis"),
              Spacer(),
              SizedBox(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 180,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Sign Up"),
              Spacer(),
              subTitleText("Creado para la clase de Ing Software 2022-2"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF69F0AE),
    );
  }
}
