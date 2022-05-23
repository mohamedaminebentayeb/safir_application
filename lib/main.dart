
import 'package:flutter/material.dart';
import 'package:safir_application/Screens/LoginPage.dart';
import 'package:safir_application/Screens/SplashScreen.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/LoginPage', // rout initialisation ( premiére page a afficher)
      routes: {
        '/splashScreen': (context) => SplashScreen(), // route definition
        '/WelcomePage':(context) => WelcomePage(), 
        '/LoginPage':(context) => LOginPage(),
      },
    ),
  );
}