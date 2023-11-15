import 'package:don_galleto/FrontEnd/Login/Functions/LoginController.dart';
import 'package:don_galleto/FrontEnd/Login/Modules/LoginContainer.dart';
import 'package:don_galleto/FrontEnd/SharedWidgets/Resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class LoginPageMain extends StatelessWidget {
  LoginController con = Get.put(LoginController());
  Resources resources = Resources();
  LoginContainer _contenedor = Get.put(LoginContainer());

  @override
  Widget build(BuildContext context) {

    double MQH = MediaQuery.of(context).size.height;
    double MQW = MediaQuery.of(context).size.width;

    return Material(
      child: 
         Stack(
            children: [
              resources.background(MQH, MQW), 
              _contenedor.contenedor(MQH, MQW, context),
            ],
        ),
    );
  }
}
