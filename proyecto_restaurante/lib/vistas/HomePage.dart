import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_restaurante/vistas/Booking.dart';
import 'package:proyecto_restaurante/vistas/Maps.dart';
import 'package:proyecto_restaurante/vistas/Menu.dart';
import 'package:proyecto_restaurante/vistas/SigInPage.dart';

import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Y COMA MIJO",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: _screenHeight * 0.07,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                largeButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Booking();
                      },
                    ),
                  );
                }, Color(0xFF41F2C0), "Reservas"),
                largeButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignInPage();
                      },
                    ),
                  );
                }, Color(0xFF41F2C0), "Login"),
                Spacer(),
              ],
            ),
            Image(
              image: AssetImage("assets/logo.png"),
              width: 300,
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                micardImage(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Maps();
                      },
                    ),
                  );
                }, "assets/mapa.png", Color(0xFF41F2C0), "Ubicación Mijo"),
                micardImage(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return menu();
                      },
                    ),
                  );
                }, "assets/menu.jpg", Color(0xFF41F2C0), "Menú Mijo")
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF69F0AE),
    );
  }
}
