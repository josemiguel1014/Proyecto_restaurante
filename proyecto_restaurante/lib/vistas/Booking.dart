import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_restaurante/vistas/SignUpPage.dart';

import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

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
                image: AssetImage("assets/booking.png"),
                width: 120,
                height: 120,
              ),
              Spacer(),
              titleText("Reservas Mijo"),
              SizedBox(height: 8),
              subTitleText("Reserve una mesa para que venga a parchar pues!"),
              Spacer(),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Nombre",
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  subTitleText("Fecha: "),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      maxLength: 2,
                      decoration: InputDecoration(
                        labelText: "Día",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextField(
                      maxLength: 2,
                      decoration: InputDecoration(
                        labelText: "Mes",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextField(
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: "Año",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Reservar"),
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
