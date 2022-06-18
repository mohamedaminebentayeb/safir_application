// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class Visit extends StatelessWidget {
  const Visit({ Key? key , required this.title, required this.image , required this.etat }) : super(key: key);
final String title;
final String image;
final String etat;
  @override
  Widget build(BuildContext context) {
    late Color color;

    if(etat == "En cours") { color =green2 ;}
    else{ color =  orange;}
    return Card(


        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
                                 height: 250,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left : 10.0 , right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                          AutoSizeText(
                                            '$title',
                                            maxLines: 1,
                                            style: TextStyle(
                                              color:black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            
                                            child: Card(
                                            color: color,

                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Row(children: [
                                                    AutoSizeText(
                                                '$etat',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color:white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 7,
                                                  
                                                ),
                                          ),




                                                ],),
                                              ),
                                               shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5),
                                                  ),
                                            ),
                                          ),
 


                    ],
                  ),
                ),
                 Container(
                                  
                     height: 200,

                child: ClipRRect(
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    

              ),
                  child: Image(

                    image: AssetImage('Assets/$image.png'),
                ),
              ),
             ),
                

                              
              ],
            ),
          ),
        ),
           shape: RoundedRectangleBorder(
           side: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(20),
          ),







      
      
    );
  }
}