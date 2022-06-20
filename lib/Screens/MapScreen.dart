// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:safir_application/Classe/visitresume.dart';
//import 'package:flutter_map/plugin_api.dart';
// ignore: depend_on_referenced_packages
import 'package:safir_application/Colors/Colors.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:safir_application/Components/Buttom.dart';
import 'package:safir_application/Components/addcircuitbuttomn.dart';
import 'package:safir_application/Components/visitresumecard.dart';
  final Set<Marker> markers = new Set();
   Completer<GoogleMapController> _controller = Completer();

 Polyline pol = Polyline(polylineId:PolylineId( " FIRST polyline "), 
 points: [

   LatLng(36.7484043, 3.075778) ,
   LatLng(36.7456417, 3.0697775),
   LatLng(36.8120345, 3.0225093),
   LatLng(36.8205495, 3.0092078),
   LatLng(36.8009262, 3.0426368),
     LatLng(36.7484043, 3.075778) ,
   




 ],
 width: 8, color: green );
 Polyline pol1 = Polyline(polylineId:PolylineId( " Second polyline "), 
 points: [

 LatLng(36.7422222, 3.1180556) ,
   LatLng(36.7209669, 3.1376625),
   LatLng(36.725575, 3.15063),
   LatLng(36.7123834, 3.196724),
    LatLng(36.7422222, 3.1180556) ,
  




 ],
  width: 8, color: green );
 Polyline pol2 = Polyline(polylineId:PolylineId( " Second polyline "), 
 points: [

 LatLng(36.800402, 2.9181427) ,
 LatLng(36.7532487, 2.8881285) ,
   
 LatLng(36.7571141, 2.8465008) ,
 LatLng(36.7668544, 2.9602011) ,
LatLng(36.7432476, 2.8496069) ,
 LatLng(36.800402, 2.9181427) ,




 ],
 
 width: 8, color: green );
 Polyline pol3 = Polyline(polylineId:PolylineId( " Second polyline "), 
 points: [

 LatLng(27.7237625, 85.325626) ,
   LatLng(27.7099116, 81.3132343),
   LatLng(28.7099116, 81.0132343),




 ],
 
 width: 8, color: green );
 final CameraPosition origin = CameraPosition(
    target:     LatLng(36.7484043, 3.075778)  ,
    zoom: 13.4746,
  );
    final CameraPosition origin1 = CameraPosition(
    target:    LatLng(36.7422222, 3.1180556) ,
    zoom: 13.4746,
  );
    final CameraPosition origin2 = CameraPosition(
    target:  LatLng(36.800402, 2.9181427) ,

    zoom: 13.4746,
  );
  final CameraPosition origin3 = CameraPosition(
    target:  LatLng(26.7137735, 84.315626) , 
    zoom: 13.4746,
  );
     

    
  

   

   final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target:     LatLng(26.7137735, 84.315626) ,
      tilt: 59.440717697143555,  
      zoom: 15.151926040649414);
 class Ind extends ChangeNotifier {
 int? selectedIndex;
 CameraPosition _kGooglePlex = CameraPosition(
    target:     LatLng(27.7137735, 85.315626) ,
    zoom: 15.4746,
  );  
   Polyline _kpolyline  = pol2;
  void updateInd( int num , origin ) {
    selectedIndex = num;
    _kGooglePlex = origin;
    notifyListeners();
  }
  void updatepol(Polyline polyline )
  {
    _kpolyline = polyline;
    notifyListeners();


  }
}

visitresume Visitresume = new visitresume(nbvisiteurs: 15000, Title: "Tour Setif", attraction: " Historique ", duree: 10, index: 0 , color : green ,polyline: pol  , origin: origin);

  
visitresume Visitresume0 = new visitresume(nbvisiteurs: 15000, Title: "Tour d'alger", attraction: " Touristique...", duree: 3, index: 0 , color : green ,polyline: pol  , origin: origin);

visitresume Visitresume1 = new visitresume(nbvisiteurs: 13500, Title: "Tours S-Alger", attraction: "Touristique ...", duree: 15, index: 1 , color: green ,   origin: origin1, polyline: pol1);
visitresume Visitresume2 = new visitresume(nbvisiteurs: 12000, Title: "Tours W-Alger", attraction: "Touristique...", duree: 7, index: 2, color: green,  origin: origin2 , polyline: pol2);
visitresume Visitresume3 = new visitresume(nbvisiteurs: 12500, Title: "Tour d'oran'", attraction: " attraction ", duree: 3, index: 3, origin: origin3,color: green , polyline: pol3);
Set <Polyline> _polylines = Set<Polyline> ();
  var list = [Visitresume0 ,Visitresume1 , Visitresume2  ];

     const LatLng showLocation = const LatLng(27.7089427, 85.3086209); //location to show in map

 
class MapScreen extends StatefulWidget {
  const MapScreen({ Key? key }) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late int selectindex;
  GoogleMapController? mapController; //contrller for Google map
  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = "AIzaSyBKkPRYMZoNAs2ETRq3rbJg6XyR-AL4NFU";
  
  Map<PolylineId, Polyline> polylines = {}; //polylines to show direction

  LatLng startLocation =   LatLng(27.7137735, 85.315626);  
  LatLng endLocation =LatLng(27.7099116, 85.3132343); 

    // travelMode: TravelMode.driving,

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

























  






   // ignore: prefer_final_fields
 
        @override
 
 void initState() {
    // TODO: implement initState
    super.initState();
    
  }
 

 
 
  Widget build(BuildContext context) {
   return ChangeNotifierProvider<Ind>(
          create: (context) => Ind(),
      child: Scaffold(
         appBar: AppBar(
                     backgroundColor: notif,
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
                     leading: IconButton(
                      onPressed: () {
                        //un boutton pour retourner a la page planete choice
                        Navigator.pushReplacementNamed(
                            context, '/navigation');
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.close,
                          size: 30,
                          color: Colors.black
                      ),
                    ),
                  
                     elevation: 0,
                    leadingWidth: 70,                    
                    
      ),
      body :Container(
        color: notif,
        child: Padding(
  
         padding: const EdgeInsets.all(00.0),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
               SizedBox(
                    height: 0.015* MediaQuery.of(context).size.height,

                      ),
             Padding(
               padding: const EdgeInsets.all(0.0),
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
                    height: 0.008* MediaQuery.of(context).size.height,

                      ),
                      
               MAp(),
                 
                  Expanded(
                    
                    
                        child: ListView.builder(
                       scrollDirection: Axis.horizontal,

                        padding:EdgeInsets.only(left:15 , top: 5),
                          itemCount: list.length+1,
                          itemBuilder: (BuildContext context, int ind) {
                       //  Color cardcolor  
                          // ignore: curly_braces_in_flow_control_structures
                          if (ind != 0)  return GestureDetector(
                              child: 
                              InkWell(                        
                      child:Container(
                           height: 30.0,
                            margin: EdgeInsets.only(bottom: 10),
                              child: VisitresumeCard(Title: list[ind-1].Title , nbvisiteurs: list[ind-1].nbvisiteurs, attraction: list[ind-1].attraction , duree: list[ind-1].duree , ind: ind,pol: list[ind-1].polyline, Org: list[ind-1].origin,),// Title: "Tour d'alger", nbvisiteurs: 12, duree: 3,attraction: "attraction"),

                          ),                        
  onTap: () {                          
  goToTheLake(list[ind].origin);
           Provider.of<Ind>(context, listen: true)
                              .updateInd(ind , list[ind].origin);
           Provider.of<Ind>(context, listen: true)
              .updatepol(list[ind].polyline);  },                      
) 
                       );
                else return Container(
                        height: 30.0,
                          margin: EdgeInsets.only(bottom: 10),
                         
                         child : Card(child :addCircuitCard(),
                         shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
   
                       ),
                         
                         
                         ));
                         
                          },
                        ),
                      ),
                      Container(
                                   margin: EdgeInsets.only(left : 20.00 , right: 20.0),

                        child: Buttom(text: "Commencer la visite", nextpage: "visitdetail")
                        ),
                         SizedBox(
                    height: 0.010* MediaQuery.of(context).size.height,

                      ),
              
              
              
      
      

          









            ],
            






          ),






        ),
   
      )),
    );

      
  
  }

 
}
class MAp extends StatelessWidget {
  const MAp({ Key? key  }) : super(key: key);

  @override
  Widget build(BuildContext context) {



       Set<Marker> getmarkers() { //markers to place on map
    
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title First ',
          snippet: 'My Custom Subtitle',
          
        ),
        icon: BitmapDescriptor.defaultMarker,
         //Icon for Marker
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
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7484043, 3.075778), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
       markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7456417, 36.7456417), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.8120345, 3.0225093), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.8205495 , 3.0092078), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.8009262 ,3.0426368), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      )); //
        markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7422222, 3.1180556), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7209669, 3.1376625), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
       markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.725575, 3.15063), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
       markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7123834, 3.196724), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.800402, 2.9181427), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));//
         markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7532487, 2.8881285), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
       markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7571141, 2.8465008), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7668544, 2.9602011), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
        markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
position: LatLng(36.7432476, 2.8496069), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'Marker Title Third ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));


       //add more markers here 
    

    return markers;
  }



    return 
    ChangeNotifierProvider<Ind>(
          create: (context) => Ind(),
          child :Container(
                        height: 0.500* MediaQuery.of(context).size.height,
                        child: GoogleMap(
                       //                 mapType: MapType.normal,
                          myLocationButtonEnabled: false,
                          zoomControlsEnabled: true,
                          zoomGesturesEnabled: true,
                          markers: getmarkers(),
                          polylines: {Provider.of<Ind>(context)._kpolyline},
             mapType: MapType.normal,
              initialCameraPosition: Provider.of<Ind>(context)._kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                
              },
        ),
    ));
    
                      
  }
}
    goToTheLake(Lat) async {
     GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(Lat));
  }