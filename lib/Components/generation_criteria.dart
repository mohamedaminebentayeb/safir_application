import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/genaration_page.dart';

class critere extends StatefulWidget {
  const critere({ Key? key , required this.title}) : super(key: key);
final String title;
  @override
  _critereState createState() => _critereState();
}

class _critereState extends State<critere> {
   Color color = notif;
   String name = "gris"; 
  @override
 

  
  void initState() {
    color = gris;
    name = "gris";
    super.initState();
  }
  @override
  
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
               side: BorderSide(color: color, width: 2),

            borderRadius: BorderRadius.circular(10),
   
  ), 
        child :InkWell(
      onTap: () {
      if(name == "gris")  setState(() {
                  color = green;
                  name = "green";
                                });
      else setState(() {
                  color = notif;
                  name = "gris";
                                });
     
      },
      child: Padding(
          padding: const EdgeInsets.only(left :40.0 , right: 40.0 ,  ),
          child: Container(
             height: 25,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.title , style: TextStyle(color : gris , fontSize: 15 , fontWeight: FontWeight.w400,),),
              ],
            ),
              
          ),
        ),
        
      )
      
      );
     
  }
}