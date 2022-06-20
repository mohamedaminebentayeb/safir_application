// ignore_for_file: unnecessary_new

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/Buttom.dart';
import 'package:safir_application/Components/buttomn2.dart';
import 'package:safir_application/Components/feedback.dart';
import 'package:safir_application/Components/generation_criteria.dart';
var hebergement = [    
    '2 étoiles',
    '3 étoiles ',
    '4 étoiles',
    '5 étoiles',
    
  ];
  var Stations = [    
    'Makam chahid',
    'Sablette',
    'Notre damme',
    'Casbah',
    'El hamma',
  ];
  var Duree = [    
    '2 jours',
    '5 jours ',
    '7 jourss',
    '10 jours',
    '15 jours',
  ];
  enum Menu { itemOne, itemTwo, itemThree, itemFour }

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
         child : Column(
           
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
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
                                                Container(
                                                  height: 30,
                                                  child: TextButton(onPressed: (){
                                                   showPopupMenu(hebergement);



                                                  },
                                                   child:AutoSizeText(
                                               'Selectioner >',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color:green,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.underline,
                                                    fontSize: 20,
                                                    
                                                  ), )


                                                  ),
                                                )]
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
                                                          Container(
                                                            height: 30,
                                                            child: TextButton(onPressed: (){
                                                 showPopupMenu(Stations);



                                                },
                                                 child:AutoSizeText(
                                               'Selectioner >',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:green,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.underline,
                                                  fontSize: 20,
                                                  
                                                ), )


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
                            Container(
                              height: 30,
                              child: TextButton(onPressed: (){
                                                   showPopupMenu(Duree);



                                                  },
                                                   child:AutoSizeText(
                                                 'Selectioner >',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color:green,
                                                    fontWeight: FontWeight.w500,
                                                    decoration: TextDecoration.underline,
                                                    fontSize: 20,
                                                    
                                                  ), )


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
  showPopupMenu(List<String> list){
    var pos ;
    list[0] == "2 jours" ? pos = RelativeRect.fromLTRB(25.0, 250.0, 0.0, .0) : pos =RelativeRect.fromLTRB(25.0, 25.0, 0.0, .0);
    showMenu<String>(
      
      context: context,
      
     position: pos ,  //position where you want to show the menu on screen
      items: [
        PopupMenuItem<String>(
            child:  Text("${list[0]}"), value: '1'),
        PopupMenuItem<String>(
            child:  Text(list[1]), value: '2'),
        PopupMenuItem<String>(
            child:  Text(list[2]), value: '3'),
             PopupMenuItem<String>(
            child:  Text(list[3]), value: '4'),
      ],
      elevation: 8.0,
    )
    .then<void>((String) {

    
     

    });
}
}
