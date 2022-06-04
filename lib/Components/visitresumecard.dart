import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/MapScreen.dart';
class VisitresumeCard extends StatelessWidget {
  const VisitresumeCard({ Key? key ,required this.attraction , required this.Title ,required this.origin , required this.nbvisiteurs , required this.duree , required this.ind , required this.pol}) : super(key: key);
final String Title ;
final String attraction ;
final int nbvisiteurs;
final int duree;
final int ind;
final Polyline pol;
final CameraPosition origin ;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Ind>(
          create: (context) => Ind(),
        child : Container(
           height: 125,
            width: 135,
          child: GestureDetector(
          onTap: () {
               goToTheLake(origin);
           Provider.of<Ind>(context, listen: false)
                              .updateInd(ind);
           Provider.of<Ind>(context, listen: false)
              .updatepol(pol);
           
                              
              
        },
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Card(
                color: white,
               
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [


                    Row(children : [


                      AutoSizeText(
                                    '$Title',
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
                              width: 0.012* MediaQuery.of(context).size.width,
                            ),
                                             Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),
                               SizedBox(
                              width: 0.012* MediaQuery.of(context).size.width,
                            ),
                                 AutoSizeText(
                                                  '$attraction',
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
                              width: 0.012* MediaQuery.of(context).size.width,
                            ),
                                             Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),

                               SizedBox(
                              width: 0.012* MediaQuery.of(context).size.width,
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
                              width: 0.012* MediaQuery.of(context).size.width,
                            ),
                                             Image(
                          height: 20,
                          width: 15,
                          image: AssetImage('Assets/map.png'),
                        ),
                               SizedBox(
                              width: 0.012* MediaQuery.of(context).size.width,
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
        side: BorderSide(color:   Provider.of<Ind>(context).selectedIndex == ind? green : white, width: 2),
        borderRadius: BorderRadius.circular(10),
   
  ),
  
              
              
              
              ),
            ),
          ),
         
        ) );
      }
    
  }

