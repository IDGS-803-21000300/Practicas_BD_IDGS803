

import 'package:don_galleto/FrontEnd/Login/Functions/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../SharedWidgets/Resources.dart';

class LoginContainer {

  LoginController con = Get.put(LoginController());
  Resources resources = Resources();

  Widget contenedor(MQH, MQW, context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 172, 171, 171),
                      blurRadius: 40,
                      offset: Offset(0, 20),
                      spreadRadius: 10,
                    )
                  ]),
              height: MQH * 0.75,
              width: MQW * 0.75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_boxTexBox(MQH, MQW, context)],
                  ),
                  Column(
                    children: [_boxBlue(MQH, MQW)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _boxTexBox(MQH, MQW, context) {
    return Container(
      height: MQH * 0.75,
      margin: EdgeInsets.only(left: MQW * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _lbTitulo(MQH, MQW),
          _lbInstruccion(MQH, MQW),
          SizedBox(height: MQH * 0.05),
          _txtUsuario(MQH, MQW),
          SizedBox(height: MQH * 0.02),
          _txtContrasenia(MQH, MQW),
          SizedBox(height: MQH * 0.05),
          _btnLogin(MQH, MQW, context),
        ],
      ),
    );
  }

  Widget _boxBlue(MQH, MQW) {
    return Container(
      height: MQH * 0.75,
      width: MQW * 0.35,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 115, 128, 99),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color.fromARGB(255, 172, 171, 171),
            blurRadius: 40,
            offset: Offset(0, 20),
            spreadRadius: 10,
          )
        ],
      ),
      child: resources.imagenes(MQH, MQW, 0.3, 0.15, 'assets/img/donGalletoLogo.png', Colors.white),
    );
  }

  Widget _lbTitulo(MQH, MQW) {
    return Container(
      margin: EdgeInsets.only(bottom: MQH * 0.06),
      child: Text("Bienvenido",
          style: GoogleFonts.quicksand(
              fontSize: MQH * 0.07,
              color: Colors.black,
              decoration: TextDecoration.none)),
    );
  }

  Widget _lbInstruccion(MQH, MQW){
    return SizedBox(
      width: MQW * 0.3,
      child: Text("Hola,  inicia sesión para poder continuar",
      textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
              fontSize: MQH * 0.02,
              color: Colors.grey,
              decoration: TextDecoration.none)),
    );
  }

  Widget _txtUsuario(MQH, MQW) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      height: MQH * 0.08,
      width: MQW * 0.25,
      child: TextField(
        textAlign: TextAlign.center,
        controller: con.txtUsuario,
        decoration: const InputDecoration(
            hintText: 'USUARIO', border: InputBorder.none),
      ),
    );
  }

  Widget _txtContrasenia(MQH, MQW) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      height: MQH * 0.08,
      width: MQW * 0.25,
      child: TextField(
        textAlign: TextAlign.center,
        controller: con.txtContrasenia,
        obscureText: true,
        decoration: const InputDecoration(
            hintText: 'CONTRASEÑA', border: InputBorder.none),
      ),
    );
  }

  Widget _btnLogin(MQH, MQW, context) {
    return Obx(()=>
      SizedBox(
        height: MQH * 0.08,
        width: MQW * 0.25,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: con.hovered.value ? const Color.fromARGB(255, 115, 128, 99) : Colors.white,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 1.5, color:con.hovered.value ? Colors.transparent : const Color.fromARGB(255, 115, 128, 99)),
            ),
          ),
          onPressed: () => con.iniciarSesion(context),
          child: Text("Iniciar Sesión", style: TextStyle(color: con.hovered.value ? Colors.white : const Color.fromARGB(255, 115, 128, 99), fontSize: 15),),
          onHover: (value) {
            con.hovered.value = value;
          },
        ),
      ),
    );
  }

}