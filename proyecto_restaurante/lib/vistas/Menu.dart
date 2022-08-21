import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_restaurante/vistas/Pagos.dart';
import '../widgets/widgets.dart';

double _screenHeight = 0.0;
double _screenWidth = 0.0;

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

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
              titleText("MENÚ MIJO"),
              SizedBox(height: 8),
              subTitleText(
                  "Disfrute de las delicias de este restaurante pues!"),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardmenu("assets/mijoburger.png", "MIJOBURGER", "15k", "0%"),
                  cardmenu("assets/papas.png", "MIJOPAPAS", "9k", "10%"),
                  cardmenu("assets/chorizo.png", "MIJOCHORIZO", "6k", "20%"),
                  cardmenu("assets/nuggets.png", "MIJONUGGETS", "8k", "0%"),
                  cardmenu("assets/pollo.png", "MIJOPOLLO", "10k", "15%"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardmenu("assets/pizza.png", "MIJOPIZZA", "45k", "10%"),
                  cardmenu("assets/hotdog.png", "MIJODOG", "7k", "0%"),
                  cardmenu("assets/taco.png", "MIJOTACO", "8k", "10%"),
                  cardmenu("assets/sushi.png", "MIJOSUSHI", "10k", "15%"),
                  cardmenu("assets/bebida.png", "MIJOBEBIDA", "5k", "0%"),
                ],
              ),
              Spacer(),
              largeButton(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Pagos();
                    },
                  ),
                );
              }, Color(0xFF41F2C0), "Pagar"),
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
