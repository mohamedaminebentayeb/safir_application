// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/CircuitVisitCard.dart';
import 'package:safir_application/Components/TextInput.dart';
import 'package:safir_application/Components/notification.dart';
import 'package:safir_application/Components/rechercheBarre.dart';
import 'package:safir_application/Components/rechercheInput.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

import '../Components/VisitCard.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({ Key? key }) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
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
                                  'Explorer',
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
                              height:   0.025* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                   
                 
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       RichText(
                                               text: TextSpan(
                                                 style: const TextStyle(
                                                  color : Color.fromARGB(255, 29, 29, 29) ,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                                  ),
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: <TextSpan>[
                                                     TextSpan(text: "Circuits les plus "),
                                                    TextSpan(text: 'visites' , style: const TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(218, 6, 206, 189))),
                                                   
                                                   
                                                                                            ],
                                                   ),
                                              ),
                     ],
                   ),
                 ), 
         
         Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircuitCard(title: "Circuit d'alger" , location: 'Alger, ALgerie', nbvisiteurs: '+10000 visiteurs' ,theme: 'historique,adventure..',image: 'alger',),
                CircuitCard(title: "Circuit d'oran" , location: 'Oran, ALgerie', nbvisiteurs: '+5000 visiteurs' ,theme: 'historique,adventure..',image: 'oran',),
                              CircuitCard(title: "Circuit d'alger" , location: 'Alger, ALgerie', nbvisiteurs: '+10000 visiteurs' ,theme: 'historique,adventure..',image: 'alger',),
                CircuitCard(title: "Circuit d'oran" , location: 'Oran, ALgerie', nbvisiteurs: '+5000 visiteurs' ,theme: 'historique,adventure..',image: 'oran',),
              ],
            ),
        ),
         SizedBox(
                                  height:   0.015* MediaQuery.of(context).size.height, //screen height * 0.025,
                                ),

               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                      DefaultTextStyle(
                                   style: TextStyle(  color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,),
                  
                                 child:AutoSizeText(
                                    'Mes visites',
                                    maxLines: 1,
                                    style: TextStyle(
                                    
                                      
                                    ),
                                 textAlign: TextAlign.start,
                                  ),
                                  
                    ),
                          DefaultTextStyle(
                                   style: TextStyle(  color: Colors.grey,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,),
                  
                                 child:AutoSizeText(
                                    'Voir tout',
                                    maxLines: 1,
                                    style: TextStyle(
                                    
                                      
                                    ),
                                 textAlign: TextAlign.start,
                                  ),
                                  
                    ),
                   ],
                 ),
               ),
                              
                               Container(
            height: 188.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                         
                          VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',),
                          SizedBox(
                            width: 20,
                          ),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'En cours',),
                            VisitCard(title: "Visite bab elouad", image : "circuit1" , etat: 'En cours',),
                          VisitCard(title: "Visite Oran", image : "circuit1" , etat: 'Terminé',),
              ],
            ),
        ),
        
           
                    
         
      
         
                          








      
           
          ]
        )
      ));
  }
}














/*             Transform.translate(
                                offset: const Offset(0,-30),
                 
               child :  Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                         AutoSizeText(
                                      'Mes visites',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        
                                      ),
                                    ),
                     ],
                   ),
                 ), 
                     ),*/