import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
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
              Spacer(),
              titleText("Nuestra Ubicación Mijo"),
              SizedBox(height: 8),
              Spacer(flex: 2),
              subTitleText("Estamos ubicados en provenza"),
              Image(
                image: AssetImage("assets/mapa.png"),
                width: 400,
                height: 400,
              ),
              Spacer(),
              largeButton(() {}, Color(0xFF41F2C0), "Como Llegar"),
              Spacer(),
              subTitleText("Creado para la clase de Ing Software 2022-2"),
              Spacer(),
              Spacer()
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF69F0AE),
    );
  }
}
