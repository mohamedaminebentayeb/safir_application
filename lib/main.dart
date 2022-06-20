
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
import 'package:safir_application/Screens/genaration_page.dart';
import 'package:safir_application/Screens/mapscreen2.dart';
import 'package:safir_application/Screens/navigation.dart';
import 'package:safir_application/Screens/progilePage.dart';
import 'package:safir_application/Screens/visitdetail.dart';
import 'package:supabase/supabase.dart';

const supabaseUrl = 'https://ltsahdljhuochhecajen.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyMDQ3OTY4MiwiZXhwIjoxOTM2MDU1NjgyfQ.IoKgpB9APMw5Te9DYgbJZIbYcvPOwl41dl4-IKFjpVk';
final supabaseclient = SupabaseClient(supabaseUrl, supabaseKey);void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: '/navigation', // rout initialisation ( premiére page a afficher)
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
        '/visitdetail':(context) => Visitmoredetail(),
        '/generate':(context) => generatePage(),
        '/navigation':(context) => Navigation(currentScreen: ExplorerPage(), currentTab: 0,),
         '/MapScreen2':(context) => MapScreen2(),

                     
      },
    ),
  );
}