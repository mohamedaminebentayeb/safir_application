// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/mapscreen2.dart';
class VisitresumeCard2 extends StatelessWidget {
  const VisitresumeCard2({ Key? key ,required this.attraction , required this.Title ,required this.Org , required this.nbvisiteurs , required this.duree , required this.ind , required this.pol}) : super(key: key);
final String Title ;
final String attraction ;
final int nbvisiteurs;
final int duree;
final int ind;
final Polyline pol;
final CameraPosition Org ;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Prov2>(
          create: (context) => Prov2(),
        child : Container(
           height: 120,
            width: 145,
          child: GestureDetector(
          onTap: () {
               goToTheLake(Org);
           Provider.of<Prov2>(context, listen: false)
                              .updateInd(ind , Org);
           Provider.of<Prov2>(context, listen: false)
              .updatepol(pol);
           
                              
              
        },
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                color: white,
               
                child: Padding(
                  padding: const EdgeInsets.only(left : 8.0 ),
                  child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,

                    children: [


                    Row(children : [


                      AutoSizeText(
                                    Title,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                    ]
                      


                    ),
                      SizedBox(
                              height: 0.010* MediaQuery.of(context).size.height,
                            ),
                     Row(
                               children: [
                                 SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                       Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),
                               SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                                 AutoSizeText(
                                                  attraction,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    color:gris,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    
                                                  ),
                                    ),
                               ],


                      ),
                       Row(
                               children: [
                                 SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                                             Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),

                               SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                                 AutoSizeText(
                                                  '$duree   jours',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    color:gris,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    
                                                  ),
                                    ),
                               ],


                      ),

                       Row(
                               children: [
                                 SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                                             Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),
                               SizedBox(
                              width: 0.008* MediaQuery.of(context).size.width,
                            ),
                                 AutoSizeText(
                                                  '$nbvisiteurs visiteurs',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    color:gris,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    
                                                  ),
                                    ),
                               ],


                      ),
                       






                  ]),
                ),
                
              
               shape: RoundedRectangleBorder(
        side: BorderSide(color:   Provider.of<Prov2>(context).selectedIndex == ind? green : white, width: 2),
        borderRadius: BorderRadius.circular(10),
   
  ),
  
              
              
              
              ),
            ),
          ),
         
        ) );
      }
    
  }

