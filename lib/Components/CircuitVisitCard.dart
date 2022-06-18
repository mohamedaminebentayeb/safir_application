// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class CircuitCard extends StatelessWidget {
  const CircuitCard({ Key? key , required this.title, required this.location , required this.nbvisiteurs , required this.image , required this.theme}) : super(key: key);
final String title;
  final String location;
    final String nbvisiteurs;
    final String image;
    final String theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      child :Card(


        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Container(
                  width: MediaQuery.of(context).size.width,
                          height: 100,
                      
                child: ClipRRect(
                    borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
              ),
                  child: Image(
                    fit: BoxFit.fill ,
                    image: AssetImage('Assets/$image.png'),
                ),
              ),
             ),
               Container(
                         
                      
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     AutoSizeText(
                                      '$title',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 13,
                                        
                                      ),
                                    ),
                     AutoSizeText(
                                      'Incorrect',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        
                                      ),
                        ),
                   ],
                 ),
                   SizedBox(
                  height: 0.002* MediaQuery.of(context).size.height,
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
                                      '$location',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        
                                      ),
                        ),
                   ],


          ),
           SizedBox(
                  height: 0.002* MediaQuery.of(context).size.height,
                ),
          Row(
                   children: [
                     SizedBox(
                  width: 0.012* MediaQuery.of(context).size.width,
                ),
                                 Image(
              height: 20,
              width: 15,
              image: AssetImage('Assets/category.png'),
            ),
                   SizedBox(
                  width: 0.012* MediaQuery.of(context).size.width,
                ),
                     AutoSizeText(
                                      '$theme',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        
                                      ),
                        ),
                   ],


          ),
           SizedBox(
                  height: 0.002* MediaQuery.of(context).size.height,
                ),
          Row(
                   children: [
                     SizedBox(
                  width: 0.012* MediaQuery.of(context).size.width,
                ),
                                 Image(
              height: 20,
              width: 15,
              image: AssetImage('Assets/visiteur.png'),
            ),
                   SizedBox(
                  width: 0.012* MediaQuery.of(context).size.width,
                ),
                     AutoSizeText(
                                      '$nbvisiteurs',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        
                                      ),
                        ),
                   ],


          )



                          
          ],
        ),
           shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.circular(10),
  ),







      )
      
    );
  }
}