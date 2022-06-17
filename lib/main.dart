
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:safir_application/Screens/AddVisit.dart';
import 'package:safir_application/Screens/Explorer.dart';
import 'package:safir_application/Screens/LoginPage.dart';
import 'package:safir_application/Screens/MapScreen.dart';
import 'package:safir_application/Screens/MesVisitesScreen.dart';
import 'package:safir_application/Screens/NotificationPage.dart';
import 'package:safir_application/Screens/SignUpScreen.dart';
import 'package:safir_application/Screens/SplashScreen.dart';
import 'package:safir_application/Screens/VisitDetails.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';
import 'package:safir_application/Screens/progilePage.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/Profil', // rout initialisation ( premiére page a afficher)
      routes: {
        '/splashScreen': (context) => SplashScreen(), // route definition
        '/WelcomePage':(context) =>  WelcomePage(), 
        '/LoginPage':(context) => LOginPage(),
        '/SignUpScreen':(context) => SignUpScreen(),
        '/AddVisitScreen':(context) => AddVisitScreen(),
        '/AddVisitDetail':(context) => VisitDetails(),
        '/NotificationScreen':(context) => NotificationsScreen(),
        '/Explorerescreen':(context) => ExplorerPage(),
        '/MesVisitesScreen':(context) => MesVisites(),
        '/MapScreen':(context) => MapScreen(),
        '/Profil':(context) => ProfilPage(),
                     
      },
    ),
  );
}