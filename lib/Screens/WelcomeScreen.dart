import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/SplashScreen.dart';

import '../Components/Buttom.dart';
String Buttomtext = 'commencer';
String nextpage = 'splashScreen';
class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
     return Material(

       child : Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
                 SizedBox(
                              height:   0.080* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
               SafirColored(),
                 AutoSizeText(
                                  'Peu importe où vous voulez aller dans le monde,',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    
                                  ),
                               textAlign: TextAlign.center,
                                ),
                                RichText(
                                     text: TextSpan(
                                       style: const TextStyle(
                                          color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: 'S' , style: const TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(218, 6, 206, 189))),
                                          TextSpan(text: 'AFIR', style: const TextStyle(color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 14,
                                                                              )),
                                          TextSpan(text: ' peut vous y accompagner!'),
                                                                                  ],
                                         ),
                                    ),
       
                                  


                                
                                
             ],
           ),
             Container(
                                   margin: EdgeInsets.all(20),

                        child: Buttom(text: Buttomtext, nextpage: nextpage)
                        )

         ],
       ),

       

    );
  
  }
}




/*

      child: Container(
                    margin: EdgeInsets.all(30),
        //color:green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           Buttom(nextpage: nextpage , text: Buttomtext) ,
          //Buttom(nextpage: nextpage , text: Buttomtext) 



          ],
        ),
      ),


*/
class SafirColored extends StatelessWidget {
  const SafirColored({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
        
          children: [
          
            Image(
              height: 200,
              width: 150,
              image: AssetImage('Assets/safirColored.png'),
            ),
             

                    ],
        ),
      ],
    );
  }
}