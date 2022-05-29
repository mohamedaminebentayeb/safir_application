// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/CircuitVisitCard.dart';
import 'package:safir_application/Components/VisitCard.dart';
import 'package:safir_application/Components/rechercheInput.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

class MesVisites extends StatefulWidget {
  const MesVisites({ Key? key }) : super(key: key);

  @override
  _MesVisitesState createState() => _MesVisitesState();
}

class _MesVisitesState extends State<MesVisites> {
      late TextEditingController _recherche;

  @override
  void initState() {
    super.initState();
    _recherche = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       color: notif,

      child: Padding(
              padding: const EdgeInsets.all(10.0),

        child: Column(
          children: [
                SafirColored(),
               Transform.translate(
                                offset: const Offset(0,-15),
               child : DefaultTextStyle(
                          // ignore: prefer_const_constructors
                          style: TextStyle(  color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,),
                
                               child:AutoSizeText(
                                  'Mes Visites',
                                  maxLines: 1,
                                  style: TextStyle(
                                  
                                    
                                  ),
                               textAlign: TextAlign.center,
                                ),
        
                ),
               ),
             
            
              
                     
                
           Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             
            Expanded(child:RechercheInput(labelText: 'Recherche..' , 
                       controller:_recherche ),  
                       ) ,
                     Transform.translate(
                                offset: const Offset(0,-10),
                                child :   Material(color: notif,
                   
                                child :IconButton(
                                  onPressed: () {
                                    //un boutton pour retourner a la page planete choice
                                    Navigator.pushReplacementNamed(
                                        context, '/planetChoice');
                                  },
                                  // ignore: prefer_const_constructors
                                  icon: Icon(
                                    Icons.filter_alt_outlined,
                                    size: 50,
                                    color: green
                                  ),
                                ),
                   
                   
                   ),
                     ),
           
          
                       
                    
                    

                
           ],),
                    
                
                SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                   
          
                              
        Container(
           height:  0.60*MediaQuery.of(context).size.height,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                         VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',),
                         SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'En cours',),
                          SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                            VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'En cours',),
                            SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'Terminé',),
                          SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                          VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',),
                          SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'En cours',),
                          SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                            VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'En cours',),
                            SizedBox(
                              height:   0.020* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'Terminé',),
              ],
            ),
        ),
        
           
                    
         
      
         
                          








      
           
          ]
        )
      )
      
    );
  }
}