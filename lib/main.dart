
import 'dart:io';

import 'package:don_galleto/FrontEnd/Login/LoginPageMain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() async{
  // if (Platform.isWindows || Platform.isLinux) {
  //   // Initialize FFI
  //   sqfliteFfiInit();
  //   // Change the default factory
  //   databaseFactory = databaseFactoryFfi;
  // }
  // runApp(const MyApp());
  // await GetStorage.init();

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ThemeData.dark();
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: "Admin",
      debugShowCheckedModeBanner: false,
      initialRoute: '/', 
      getPages: [
        GetPage(name: "/", page: () => LoginPageMain()),
      ],
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 45, 113, 202),
        colorScheme: const ColorScheme(
          brightness: Brightness.light, 
          onBackground: Color.fromARGB(255, 58, 177, 102), 
          secondary: Color.fromARGB(255, 54, 54, 54),
          primary: Color.fromARGB(255, 21, 151, 88),
          onPrimary: Color.fromARGB(255, 43, 43, 42),
          surface: Color.fromARGB(255, 37, 153, 45),
          onSurface: Color.fromARGB(255, 35, 35, 35),
          error: Color.fromARGB(255, 117, 21, 21),
          onError: Color.fromARGB(255, 148, 19, 19),
          onSecondary: Color.fromARGB(255, 60, 21, 21),
          background: Color.fromARGB(255, 42, 155, 91)
          )
      ),
      navigatorKey: Get.key,
    );
  } 
}