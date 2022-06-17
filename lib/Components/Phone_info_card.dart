
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class phonenumberinfo extends StatelessWidget {
  const phonenumberinfo({ Key? key ,required this.title }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  60,
      child : Card(
        color: white,
          // ignore: sort_child_properties_last
          child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                            Row(children: [
                             Image(
                              height: 30,
                              width: 30,
                              image: AssetImage('Assets/flag.png'),
                            ),
                                            
                            
                            
                            
                            
                              AutoSizeText(
                                   '  |  $title',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        
                                      ),
                                    ),
                                 


                      ],) 
                
                     





                  ]),
                
                  
                  
                  ),




         shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(10),
   
  ), 
      )
      
      
    );
  }
}