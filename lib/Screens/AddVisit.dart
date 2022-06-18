import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/SplashScreen.dart';

import '../Components/Buttom.dart';
class AddVisitScreen extends StatefulWidget {
  const AddVisitScreen({ Key? key }) : super(key: key);

  @override
  _AddVisitScreenState createState() => _AddVisitScreenState();
}

class _AddVisitScreenState extends State<AddVisitScreen> {
  late String value ;
    String dropdownvalue = 'Item 1';   
var items = [    
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
                   backgroundColor: white,
                  centerTitle: true,
                        title:  Column( 
                                  children : [
                                                  Image(
                                                        height: 40,
                                                        width:58,
                                                        image: AssetImage('Assets/safirColored.png'),
                                                      ),                                    ]

                          ),
                  
                    leading: IconButton(
                      onPressed: () {
                        //un boutton pour retourner a la page planete choice
                        Navigator.pushReplacementNamed(
                            context, '/navigation');
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 30,
                        color: Colors.black
                      ),
                    ),
                  
                    elevation: 0,
                    leadingWidth: 70,
    ),
    body: Padding(
      padding: const EdgeInsets.only(left :20.0 , right: 20.0),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
                    height: 0.020* MediaQuery.of(context).size.height,
                  ),
         Row(
                    children: [
                      AutoSizeText(
                                        'Sélectionnez votre\npérimètre',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color:black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 40,
                                                                                 
                                        ),
                                      ),
                    ],
                  ),
                    SizedBox(
                    height: 0.10* MediaQuery.of(context).size.height,
                  ),
                  MapIcon(),
                  SizedBox(
                    height: 0.020* MediaQuery.of(context).size.height,
                  ),
        Container(
 
   child: DropdownButtonFormField(
     itemHeight: 50,
       decoration: const InputDecoration(
             border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
  ),
    
                  hint:Text("Location" , style: TextStyle(color: gris , fontSize: 17 , fontWeight: FontWeight.w700),),
                // Initial Value
                  isExpanded: true,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),    
                                  value: dropdownvalue,

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    
                    
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) { 
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
 ),

     Transform.translate(      
       offset: Offset(-5,0) ,      
  child:Row(
    mainAxisAlignment: MainAxisAlignment.end,
                         children:[   
                                  GestureDetector(
                                                                     onTap: () {
                                                                                                                                            
                                                                    },
                                                                    child: new Text("Sélectionnez dans la carte ",   style: TextStyle(
                                                                                    color:green,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    decoration: TextDecoration.underline,
                                                                                    fontSize: 20,
                                                                                    
                                                                                  ),
                                                            ),
                                                      ),
                       
                         ]

                    ),
     ),
       

                 SizedBox(
                    height: 0.250* MediaQuery.of(context).size.height,
                  ),
            
            
                          Buttom(text: "Suivant", nextpage: "AddVisitDetail"),

                 SizedBox(
                    height: 0.00250* MediaQuery.of(context).size.height,
                  ),

            
                   




      ]),
    ),
    
    
    
    
    
    
    
    );
  }
}
class MapIcon extends StatelessWidget {
  const MapIcon({
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
              height: 64,
              width: 50.29,
              image: AssetImage('Assets/map.png'),
            ),
             

                    ],
        ),
      ],
    );
  }
}