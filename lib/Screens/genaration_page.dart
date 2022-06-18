// ignore_for_file: unnecessary_new

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/Buttom.dart';
import 'package:safir_application/Components/buttomn2.dart';
import 'package:safir_application/Components/feedback.dart';
import 'package:safir_application/Components/generation_criteria.dart';
var hebergement = [    
    ' Lamaraz Arts',
    'Holiday Inn Algiers ',
    ' Dar-Tlidjene',
    'Cheraga Tower',
    'City Hotel Alger',
  ];
class generatePage extends StatefulWidget {
  const generatePage({ Key? key }) : super(key: key);

  @override
  _generatePageState createState() => _generatePageState();
}

class _generatePageState extends State<generatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
                   backgroundColor: white,
                  centerTitle: true,
                        title:  Column( 
                                  children : [
                                               AutoSizeText(
                                                   'Generer',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        
                                      ),
                                               )                                  ]

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
  
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         color : white,
         child : Column(children: [
SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                   AutoSizeText(
                                               'Hébergement',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                         ),
                                                         GestureDetector(
                                                                     onTap: () {
                                                                                                                                            
                                                                    },
                                                                    child: new Text("Sélectionner >",   style: TextStyle(
                                                                                    color:green,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 20,
                                                                                    
                                                                                  ),
                                                            ),
                                                      )


                ]
                ),
 SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
   Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                   AutoSizeText(
                                               'Stations souhaitées',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                         ),
                                                         GestureDetector(
                                                                     onTap: () {
                                                                     
                                                                    },
                                                                    child: new Text("Sélectionner >",   style: TextStyle(
                                                                                    color:green,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 20,
                                                                                    
                                                                                  ),
                                                            ),
                                                                                                    )


                ]
                ),
 SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
      Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                
  Row(
    children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( 
            children: [
              AutoSizeText(
                                               'Activités',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                                                         ),
            ],
          ) ,
         SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Avec"),
                  critere(title: "Sans"),],) 




        ],),
    ],
  ),
 SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
   Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),

  Row(
    children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( 
            children: [
              AutoSizeText(
                                               'Sortir pendant :',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                                                         ),
            ],
          ) ,
         SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Matinée"),
                  critere(title: "Midi"),
                  critere(title: "Soiree"),],),
                    SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Soiree"),
                  critere(title: "Aprés midi"),
                 ],)





        ],),
    ],
  ),
  SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
   Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                   AutoSizeText(
                                               'Durée estimée ',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                         ),
                                                         GestureDetector(
                                                                     onTap: () {
                                                                     print("aa");
                                                                    },
                                                                    child: new Text("Sélectionner >",   style: TextStyle(
                                                                                    color:green,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 20,
                                                                                    
                                                                                  ),
                                                            ),
                                                                                                    )


                ]
                ),
 SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
   Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                
  Row(
    children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( 
            children: [
              AutoSizeText(
                                               'Transport',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                                                         ),
            ],
          ) ,
         SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Véhiculé"),
                  critere(title: "Transport publique"),
                ],),
                    SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "A pied"),
                 
                 ],)





        ],),
    ],
  ),
   SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
   Divider(
                  color: gris,
                  height: 10,
                ),
    SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
    Row(
    children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row( 
            children: [
              AutoSizeText(
                                               'Status',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:gris,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  
                                                ),
                                                         ),
            ],
          ) ,
         SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Solo"),
                  critere(title: "Couple"),
                    critere(title: "Famille"),
                ],),
                    SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),

                 Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [critere(title: "Complique"),
                
                 
                 ],),
                  
                //




        ],),
    ],
  ),
 SizedBox(
                  height: 0.0050* MediaQuery.of(context).size.height,
                ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
                      Buttom2(text: "Generer circuit",nextpage: "MapScreen2",)
                   ],)
                


         ],)


       ),
     ),
      
    );
  }
}