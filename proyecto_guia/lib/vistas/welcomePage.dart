import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_guia/vistas/signInPage.dart';
import 'package:proyecto_guia/vistas/signUpPage.dart';
import 'package:proyecto_guia/widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 480,
        height: 950,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            Text(
              "Bienvenida",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Spacer(flex: 1),
            Text(
              "Esta es una app de prueba para experimentar con ciertos widgets en Flutter. Está inspirada en el diseño de Yasir Ahmad Noori de Dribble",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2),
            Image(image: AssetImage("assets/logo.png")),
            Spacer(flex: 2),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignInPage();
                    },
                  ),
                );
              },
              Colors.transparent,
              "Sign In",
            ),
            Spacer(flex: 1),
            largeButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
                    },
                  ),
                );
              },
              Color(0xFFF2D06B),
              "Sign Up",
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
