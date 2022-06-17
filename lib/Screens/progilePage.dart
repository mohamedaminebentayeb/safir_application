import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/Buttom.dart';
import 'package:safir_application/Components/Phone_info_card.dart';
import 'package:safir_application/Components/birthday_info_card.dart';
import 'package:safir_application/Components/profileinfo.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';
String Fullname = "sarra bendaho";
String email = " js_bendaho@esi.dz";
String gender = "femme";
String birthday = "30/09/1985";
class ProfilPage extends StatefulWidget {
  const ProfilPage({ Key? key }) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
             color: notif,

      child: Padding(
              padding: const EdgeInsets.only(left : 8.0 , right: 8),

        child: Column(
          children: [
                  Image(
              height: 100,
              width: 100,
              image: AssetImage('Assets/safirColored.png'),
            ),
            
                Image(
              height: 100,
              width: 100,
              image: AssetImage('Assets/user.png'),
            ),
            SizedBox(
              height:  0.010* MediaQuery.of(context).size.height, 
            ),
             DefaultTextStyle(
                                     style: TextStyle( ),
                      
                                    child:  AutoSizeText(
              '$Fullname',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        
                                      ),
                                    ),
                     ),
                      DefaultTextStyle(
                                     style: TextStyle( ),
                      
                                    child:  AutoSizeText(
              '$email',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        
                                      ),
                                    ),
                     ),
                       SizedBox(
              height:  0.010* MediaQuery.of(context).size.height, 
            ),
                     Profileinfo(title: Fullname,),
                     SizedBox(
                        height:  0.010* MediaQuery.of(context).size.height, 
                      ),
                     Profileinfo(title: email,),
                      SizedBox(
                        height:  0.010* MediaQuery.of(context).size.height, 
                      ),
                     phonenumberinfo(title :"0794834020" ),
                      SizedBox(
                        height:  0.010* MediaQuery.of(context).size.height, 
                      ),
                     Profileinfo(title: gender,),
                      SizedBox(
                        height:  0.010* MediaQuery.of(context).size.height, 
                      ),
                      birthdayinfo(title: birthday,),
                       SizedBox(
                        height:  0.015* MediaQuery.of(context).size.height, 
                      ),
                      Padding( padding: const EdgeInsets.only(left : 5.0 , right: 5),
                      child : Buttom(text: " Update profile", nextpage: "next one"),)
                     


            
          ]

      
    )));
  }
}