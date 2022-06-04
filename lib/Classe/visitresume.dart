import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class visitresume{





CameraPosition origin;
String Title;
Polyline polyline ;
int nbvisiteurs ;
int duree ;
String attraction;
int index;
Color color;

visitresume({
  required this.nbvisiteurs,
    required this.color,
    required this.origin,
  required this.polyline,
  // ignore: non_constant_identifier_names
  required this.Title,
  required this.attraction,
  required this.duree,
  required this.index,
});






}