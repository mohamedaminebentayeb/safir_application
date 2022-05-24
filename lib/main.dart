
import 'package:flutter/material.dart';
import 'package:safir_application/Screens/AddVisit.dart';
import 'package:safir_application/Screens/LoginPage.dart';
import 'package:safir_application/Screens/SignUpScreen.dart';
import 'package:safir_application/Screens/SplashScreen.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/AddVisitScreen', // rout initialisation ( premiére page a afficher)
      routes: {
        '/splashScreen': (context) => SplashScreen(), // route definition
        '/WelcomePage':(context) => WelcomePage(), 
        '/LoginPage':(context) => LOginPage(),
        '/SignUpScreen':(context) => SignUpScreen(),
        '/AddVisitScreen':(context) => AddVisitScreen(),

      },
    ),
  );
}