// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/OldNotif.dart';
import 'package:safir_application/Components/notification.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({ Key? key }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
              color: notif,

      child: Padding(
              padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
 Image(
              height: 100,
              width: 100,
              image: AssetImage('Assets/safirColored.png'),
            ),
                            Transform.translate(
                                offset: const Offset(0,-15),
               child : DefaultTextStyle(
  style: TextStyle(  color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,),
                
                               child:AutoSizeText(
                                  'Notifications',
                                  maxLines: 1,
                                  style: TextStyle(
                                  
                                    
                                  ),
                               textAlign: TextAlign.center,
                                ),
        
                ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left : 8.0 , right: 8.0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     DefaultTextStyle(
                                     style: TextStyle(  color : gris,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,),
                      
                                    child:AutoSizeText(
                                        "Vous avez 10 notifications aujaurd'hui",
                                        maxLines: 1,
                                        style: TextStyle(
                                        
                                          
                                        ),
                                     textAlign: TextAlign.justify,
                                      ),
                     ),
                   ],
                 ),
               ),
               Container(
            margin: const EdgeInsets.symmetric(vertical: 0.0),
            height: 250.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              children: <Widget>[
                notification(name: 'amine', photo: 'map', point: 10 , rank: 10),
                                     SizedBox(
                                      height: 0.005* MediaQuery.of(context).size.height,
                                   ),
                                   notification(name: 'amine', photo: 'map', point: 10 , rank: 10),
                                     SizedBox(
                                      height: 0.005* MediaQuery.of(context).size.height,
                                   ),
                                   notification(name: 'amine', photo: 'map', point: 10 , rank: 10),
                                     SizedBox(
                                      height: 0.005* MediaQuery.of(context).size.height,
                                   )
              ],
            ),
        ),
     
                            
                        Transform.translate(offset: Offset(0,0),
                         child :Padding(
                                  padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          DefaultTextStyle(
                                                          style: TextStyle(  color : gris,
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 15,),
                                            
                                                          child:AutoSizeText(
                                                              "Cette semaine",
                                                              maxLines: 1,
                                                              style: TextStyle(
                                                              
                                                                
                                                              ),
                                                          textAlign: TextAlign.justify,
                                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                        ),
                       
              
        Expanded(
                          child: ListView.builder(
                            itemCount:3,
                            itemBuilder: (BuildContext context, ind) {
                             
                              return Transform.translate(offset: Offset(0,-0.040* MediaQuery.of(context).size.height),
                            child :  Column(
                                children: [
                                   Oldnotification(name: 'amine', photo: 'map', point: 10 , rank: 10),
                                    SizedBox(
                                      height: 0.018* MediaQuery.of(context).size.height,
                                   )
                                 
                                ],
                              )
                       ) ;
                            },
                          ),
                        ),
                        

  

        ],)
        //child : notification(name: 'amine', photo: 'map', point: 10 , rank: 10),
  
      ),
    );
  }
}