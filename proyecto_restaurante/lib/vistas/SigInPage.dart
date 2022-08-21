import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/widgets.dart';
import 'SignUpPage.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
                image: AssetImage("assets/sigin.png"),
                width: 120,
                height: 120,
              ),
              Spacer(),
              titleText("Sign In"),
              SizedBox(height: 8),
              subTitleText(
                  "Conéctate con una comunidad maravillosa y disfruta de la mejor comida"),
              Spacer(),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "User",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Sign In"),
              Spacer(),
              subTitleText("Si no estás registrado, registrate"),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
                    },
                  ),
                );
              }, Color(0xFF558B2F), "Sign Up"),
              Spacer(),
              subTitleText("Creado para la clase de Ing Software 2022-2"),
              Spacer(),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF69F0AE),
    );
  }
}
