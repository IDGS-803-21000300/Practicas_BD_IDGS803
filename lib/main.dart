
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
  runApp(const MyApp());
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
        primaryColor: const Color.fromARGB(255, 115, 128, 99),
        colorScheme: const ColorScheme(
          brightness: Brightness.light, 
          onBackground: Color.fromARGB(255, 115, 128, 99), 
          secondary: Color.fromARGB(255, 150, 52, 52),
          primary: Color.fromARGB(255, 115, 128, 99),
          onPrimary: Color.fromARGB(255, 133, 104, 90),
          surface: Color.fromARGB(255, 203, 142, 95),
          onSurface: Color.fromARGB(255, 224, 222, 171),
          error: Color.fromARGB(255, 117, 21, 21),
          onError: Color.fromARGB(255, 148, 19, 19),
          onSecondary: Color.fromARGB(255, 60, 21, 21),
          background: Color.fromARGB(255, 115, 128, 99)
          )
      ),
      navigatorKey: Get.key,
    );
  } 
}