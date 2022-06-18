import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/genaration_page.dart';

class themeCard extends StatefulWidget {
  const themeCard({ Key? key , required this.title}) : super(key: key);
final String title;
  @override
  _themeCardState createState() => _themeCardState();
}

class _themeCardState extends State<themeCard> {

  @override
 

  
 
  @override
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Card(
          shape: RoundedRectangleBorder(
                 side: BorderSide(color: gris, width: 2),

              borderRadius: BorderRadius.circular(10),
   
  ), 
          child :InkWell(
        onTap: () {
        
       
        },
        child: Padding(
            padding: const EdgeInsets.only(left :5.0 , right: 0.0 ,  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //   crossAxisAlignment: CrossAxisAlignment.s,
                    children: [
                      Text(widget.title , style: TextStyle(color : gris , fontSize: 15 , fontWeight: FontWeight.w400,),),
                      IconButton(
                        onPressed: () {
                         
                        },
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.close,
                          size: 15,
                          color: gris,
                        ),
                      ),
                    ],
                  ),
                    
                ),
                
              ],
            ),
          ),
          
        )
        
        ),
    );
     
  }
}