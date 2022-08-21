import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class Pagos extends StatelessWidget {
  const Pagos({Key? key}) : super(key: key);

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
                image: AssetImage("assets/pago.png"),
                width: 120,
                height: 120,
              ),
              Spacer(),
              titleText("Realice Su Pago Mijo"),
              SizedBox(height: 8),
              Spacer(flex: 2),
              subTitleText("Cantidad a Pagar"),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Valor a Pagar",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Descuento",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Domicilio",
                  ),
                ),
              ),
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Finalizar Pago"),
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
