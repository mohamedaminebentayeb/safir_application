import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/MapScreen.dart';
class Buttom2 extends StatelessWidget {
  Buttom2({Key? key, required this.text, required this.nextpage })
      : super(key: key);
  final String text;
  final String nextpage;
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 20,
      width:   0.800* MediaQuery.of(context).size.width,

      child: Column(
        children: 
          [TextButton(
            onPressed:() {
              
              list.add(Visitresume);
             
                             goToTheLake(origin);
                          
                 
              Navigator.pushNamed(context, '/${nextpage}');},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                        side: BorderSide(color: green, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: white,
            ),
            
            child: Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 8,
                ),     
            
                child: Column(
                  
                  children: [
                    Row(
                      children: [
                      
                        
                        Expanded(
                         // flex: 1,
                          child: Center(
                            child: SizedBox(
                              height: 20,
                              child: AutoSizeText(
                                text,
                                maxLines: 1,
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      
                      ],
                    ),
                  ],
                 
                ),
                
              ),
              
          
          )
          
          ),
        
        ],
      ),
    );
    
      
  }
}
class buttomsInfo{
    
 late String text;
 late String nextpage;



}