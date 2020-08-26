import 'package:contador/src/pages/contador_page.dart';
// import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  //context tiene la información del arbol
  @override
  Widget build(context) {
    return MaterialApp(
      // home: Center(child: Text('My app!')), //Centrar el texto
      // home: Text('My app'),
      home: ContadorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
