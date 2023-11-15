
import 'package:flutter/material.dart';

class Resources {

  Widget background(MQH, MQW) {
    return Container(
      color: Color.fromARGB(255, 231, 231, 222),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget imagenes(double MQH, double MQW, double sizew, double sizeh, String path, Color color) {
    return Image.asset(
      path, // Ruta de la imagen
      width: MQW * sizew, // Ancho de la imagen
      height: MQH * sizeh, // Alto de la imagen
      color: color, // Color de la imagen
    );
  }

}