import 'package:flutter/material.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

Card micardImage(
    VoidCallback function, String text2, Color bgcolor, String text) {
  return Card(
    color: const Color(0xFFB9F6CA),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Image(
            image: AssetImage(text2),
            height: 100,
            width: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new RaisedButton(
                onPressed: function,
                child: new Text(text),
                color: bgcolor,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

Card cardmenu(String comida, String text, String precio, String descuento) {
  return Card(
      color: const Color(0xFFB9F6CA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        // Los bordes del contenido del card se cortan usando BorderRadius
        borderRadius: BorderRadius.circular(30),

        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(comida),
              height: 150,
              width: 150,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Row(
              children: [
                Text(
                  "Precio ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(precio),
              ],
            ),
            Row(
              children: [
                Text(
                  "Descuento ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(descuento),
              ],
            )
          ],
        ),
      ));
}
