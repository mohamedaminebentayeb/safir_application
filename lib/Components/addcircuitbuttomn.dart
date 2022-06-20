import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class addCircuitCard extends StatelessWidget {
  const addCircuitCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return DottedBorder(
     // customPath: (_) => customPath,
      color: green,
      dashPattern: [8, 4],
      strokeWidth: 2,
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
       begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
Color.fromARGB(169, 21, 231, 214) ,          Colors.white,
              ],
            )
          ),
        height: 200,
        width: 120,
          child: GestureDetector(
          onTap: () {


              Navigator.pushReplacementNamed(
                            context, '/generate'); 
           
                              
              
        },
          
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add ,
              color: green,
              size: 30,),
                AutoSizeText(
                                        'Generer',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color:green,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                                                                 
                                        ),
                                      ),
          ],
        ),
          ),
       
       
      ),
    );
  }
}

