
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class Endroitcard extends StatelessWidget {
  const Endroitcard({ Key? key ,required this.title }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 0.830*MediaQuery.of(context).size.width,
      height:  60,
      child : Card(
        color: white,
          // ignore: sort_child_properties_last
          child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                            AutoSizeText(
                            '$title',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        
                                      ),
                                    ),
                             IconButton(
                                  onPressed: () {
                                    //un boutton pour retourner a la page planete choice
                                    Navigator.pushReplacementNamed(
                                        context, '/planetChoice');
                                  },
                                  // ignore: prefer_const_constructors
                                  icon: Icon(
                                    Icons.check,
                                    size: 30,
                                    color: green
                                  ),
                                ),                      





                  ]),
                
                  
                  
                  ),




         shape: RoundedRectangleBorder(
            side: BorderSide(color: green, width: 2),

        borderRadius: BorderRadius.circular(10),
   
  ), 
      )
      
      
    );
  }
}