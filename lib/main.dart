import 'package:flutter/material.dart';
import 'package:safir_application/Screens/SplashScreen.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/splashScreen', // rout initialisation ( premiére page a afficher)
      routes: {
        '/splashScreen': (context) => SplashScreen(),  // route definition
      },
    ),
  );
}