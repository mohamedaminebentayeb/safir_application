// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:flutter_map/plugin_api.dart';
// ignore: depend_on_referenced_packages
import 'package:safir_application/Colors/Colors.dart';
import 'dart:async';

import 'package:safir_application/Components/visitresumecard.dart';



class MapScreen extends StatefulWidget {
  const MapScreen({ Key? key }) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController; //contrller for Google map
  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = "AIzaSyBKkPRYMZoNAs2ETRq3rbJg6XyR-AL4NFU";
  
  Map<PolylineId, Polyline> polylines = {}; //polylines to show direction

  LatLng startLocation =   LatLng(27.7137735, 85.315626);  
  LatLng endLocation =LatLng(27.7099116, 85.3132343); 
 Set <Polyline> _polylines = Set<Polyline> ();
 static final Polyline _kpolyline = Polyline(polylineId:PolylineId( " FIRST polyline "), 
 points: [

   LatLng(27.7137735, 85.315626) ,
   LatLng(27.7099116, 85.3132343),
   showLocation,




 ],
    // travelMode: TravelMode.driving,
 width: 5, color: green );
  getDirections() async {
      List<LatLng> polylineCoordinates = [];
     
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
          googleAPiKey,
          PointLatLng(startLocation.latitude, startLocation.longitude),
          PointLatLng(endLocation.latitude, endLocation.longitude),
          travelMode: TravelMode.driving,
      );

      if (result.points.isNotEmpty) {
            result.points.forEach((PointLatLng point) {
                polylineCoordinates.add(LatLng(point.latitude, point.longitude));
            });
      } else {
         print(result.errorMessage);
      }
      addPolyLine(polylineCoordinates);
  }

  addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.deepPurpleAccent,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }
//36.7525888, 3.0867456

























  final Set<Marker> markers = new Set();
   static const LatLng showLocation = const LatLng(27.7089427, 85.3086209); //location to show in map
  






   // ignore: prefer_final_fields
   Completer<GoogleMapController> _controller = Completer();
   
  

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(27.7099116, 85.3132343),
    zoom: 15.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(27.7099116, 85.3132343),
      tilt: 59.440717697143555,
      zoom: 15.151926040649414);
        @override
 
 void initState() {
    // TODO: implement initState
    super.initState();
    getDirections();
  }
 

 
 
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
                   backgroundColor: white,
                  centerTitle: true,
                        title:  Column( 
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children : [
                                                  Image(
                                                        height: 40,
                                                        width:58,
                                                        image: AssetImage('Assets/safirColored.png'),
                                                      ),                                    ]

                          ),
                  actions: [IconButton(
                      onPressed: () {
                        //un boutton pour retourner a la page planete choice
                        Navigator.pushReplacementNamed(
                            context, '/planetChoice');
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.black
                      ),
                    ),],
                  //  leading: 
                  
                  
    ),
    body :Container(
      color: notif,
      child: Padding(
  
       padding: const EdgeInsets.all(00.0),
        child: Column( 
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ 
             SizedBox(
                  height: 0.015* MediaQuery.of(context).size.height,

                    ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
          //    mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          AutoSizeText(
                                            '  Resultats',
                                            maxLines: 2,
                                            style: TextStyle(
                                              color:black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                                                                     
                                            ),
                                          ),
                        ],
                      ),
           ),
                    SizedBox(
                  height: 0.015* MediaQuery.of(context).size.height,

                    ),
                    Container(
                      height: 0.550* MediaQuery.of(context).size.height,
                      child: GoogleMap(
                     //                 mapType: MapType.normal,
                        myLocationButtonEnabled: false,
                        zoomControlsEnabled: false,
                        zoomGesturesEnabled: false,
                        markers: getmarkers(),
                        polylines: Set<Polyline>.of(polylines.values),
           mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              
            },
      ),
                    ),
                    Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: 120.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              VisitresumeCard( Title: "Tour d'alger", nbvisiteurs: 12, duree: 3,attraction: "attraction"),
                         VisitresumeCard( Title: "Tour d'alger", nbvisiteurs: 12, duree: 3,attraction: "attraction"),
              VisitresumeCard( Title: "Tour d'alger", nbvisiteurs: 12, duree: 3,attraction: "attraction"),

           
           ],
            ),
        ),
    
    

        









          ],
          






        ),






      ),
   
    ));

      
  
  }

  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(27.7099116, 85.3132343), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Second ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(27.7137735, 85.315626), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

       //add more markers here 
    });

    return markers;
  }

}