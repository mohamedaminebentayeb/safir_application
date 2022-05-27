import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
class Buttom extends StatelessWidget {
  Buttom({Key? key, required this.text, required this.nextpage })
      : super(key: key);
  final String text;
  final String nextpage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [TextButton(
          onPressed:() {Navigator.pushNamed(context, '/${nextpage}');},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: green,
          ),
          
          child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
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
                                color: Colors.white,
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
    );
    
      
  }
}
class buttomsInfo{
    
 late String text;
 late String nextpage;



}