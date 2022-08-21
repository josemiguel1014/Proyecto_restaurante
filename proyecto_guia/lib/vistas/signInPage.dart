import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_guia/widgets/wcWidgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: 620,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Image(image: AssetImage("assets/logo2.png")),
              Spacer(flex: 2),
              titleText("Sign In"),
              SizedBox(height: 8),
              subTitleText("Conéctate con una comunidad maravillosa y más"),
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
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Sign In"),
              Spacer(),
              subTitleText("Creado para la clase de Ing Software 2022-2"),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
