// ignore_for_file: unnecessary_new

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/Buttom.dart';
import 'package:safir_application/Components/endroit_card.dart';
import 'package:safir_application/Components/feedback.dart';
String etat = " en cours" ;
String lieux = " Alger , Algerie ";
String theme = "Historique,Touristique,Gastronomique";
var list = ['El hamma', "Notre damme d'afrique", "Casbah d'alger"];
  late TextEditingController _feddback;

class Visitmoredetail extends StatefulWidget {
  const Visitmoredetail({ Key? key }) : super(key: key);

  @override
  _VisitdetailState createState() => _VisitdetailState();
}

class _VisitdetailState extends State<Visitmoredetail> {
  

  @override
  void initState() {
    super.initState();
    _feddback = TextEditingController();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
                   backgroundColor: notif,
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
  
     body: Column(
       children: [
         Scrolable(),
             Transform.translate(offset: Offset(0,-5),
                       child : Padding(padding: const EdgeInsets.only(left : 15.0 , right:15),
                                        child : Buttom(text: "Terminer", nextpage: "bkbkb")

                        ),
             )

       ],
     )
     );
  }
}
class Scrolable extends StatelessWidget {
  const Scrolable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
 height:     0.800* MediaQuery.of(context).size.height,
 
       color : notif,
       child: SingleChildScrollView(
                 physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                                height:  0.0300* MediaQuery.of(context).size.height,
                              ),
                Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              
                                  AutoSizeText(
                                                    'Visite Alger',
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      color:black,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 30,
                                                      
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 80,
                                                    child: Card(
                                                    color: green,

                                                      child: Padding(
                                                        padding: const EdgeInsets.all(5.0),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            AutoSizeText(
                                                        '$etat',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color:white,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 7,
                                                          
                                                        ),
                                                  ),




                                                        ],),
                                                      ),
                                                       shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(5),
                                                          ),
                                                    ),
                                                  ),
 


                            ],
               

             ) ,
             SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                Row(
                                     children: [
                                       SizedBox(
                                    width: 0.020* MediaQuery.of(context).size.width,
                                  ),
                                                   Image(
                                height: 20,
                                width: 15,
                                image: AssetImage('Assets/location.png'),
                              ),

                                     SizedBox(
                                    width: 0.020* MediaQuery.of(context).size.width,
                                  ),
                                       AutoSizeText(
                                                        '$lieux',
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          color:gris,
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 20,
                                                          
                                                        ),
                                          ),
                                     ],


                            ),
               SizedBox(
                  height: 0.020* MediaQuery.of(context).size.height,
                ),
            Row( crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                 SizedBox(
                                    width: 0.020* MediaQuery.of(context).size.width,
                                  ),
                                 Image(
                                height: 20,
                                width: 15,
                                image: AssetImage('Assets/category.png'),
                              ),

                                  SizedBox(
                                    width: 0.012* MediaQuery.of(context).size.width,
                                  ),
                                       AutoSizeText(
                                                        '$theme',
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          color:gris,
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 20,
                                                          
                                                        ),
                                          ),
                                     ],


                            ),
                            SizedBox(
                  height: 0.030* MediaQuery.of(context).size.height,
                ),
           Padding(
                  padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                   borderRadius: new BorderRadius.circular(10
                           
                  ),
                      child: const Image(
                          fit: BoxFit.fill ,
                          image: AssetImage('Assets/circuit1.png'),
                    ),
                  ),
                
                  

                        ),
                        SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                        Padding(    padding: const EdgeInsets.all(0.0),
                        child: Column(children: [
                        Row(
                          children: [
                        CircleAvatar(
                              radius: 20,
                              backgroundColor: green,
                              child: Text( "1", style: TextStyle( color: white , fontSize: 30),),             
                                       ),
                                                
                       
                            Endroitcard(title: list[0],),
                          ],
                        ) ,     
                        SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                        Row(
                          children: [
                        CircleAvatar(
                              radius: 20,
                              backgroundColor: green,
                              child: Text( "2", style: TextStyle( color: white , fontSize: 30),),             
                                       ),
                                                
                       
                            Endroitcard(title: list[1],),
                          ],
                        ) ,        
                        SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),   
                        Row(
                          children: [
                        CircleAvatar(
                              radius: 20,
                              backgroundColor: green,
                              child: Text( "3", style: TextStyle( color: white , fontSize: 30),),             
                                       ),
                                                
                       
                            Endroitcard(title: list[2],),
                          ],
                        ) ,     



                        ],)),
                     
                        SizedBox(
                  height: 0.020* MediaQuery.of(context).size.height,
                ),
                       
                      
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       AutoSizeText(
                                                        'Feed back',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color:black,
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 30,
                                                          
                                                        ),
                                                      ),
                     ],
                   ),
                   SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                        
                          Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       AutoSizeText(
                                                        'Laisser un commentaire',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color:gris,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          
                                                        ),
                                                      ),
                     ],
                     
                   ),
                   SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                     feedback(labelText: 'jm_bentayeb@esi.dz',
                  controller: _feddback,),
                    SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       AutoSizeText(
                                                        'Votre appréciation',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color:gris,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 15,
                                                          
                                                        ),
                                                      ),
                     ],
                   ),
                    SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                   RatingBox(),
                
                    ],
          ),
           ),
        ));
        
    
     

      
    
  }
}

class RatingBox extends StatefulWidget {
   @override
   _RatingBoxState createState() => _RatingBoxState();
}
class _RatingBoxState extends State<RatingBox> {
   int _rating = 0;
   void _setRatingAsOne() {
      setState( () {
         _rating = 1;
      });
   }
   void _setRatingAsTwo() {
      setState( () {
         _rating = 2;
      });
   }
   void _setRatingAsThree() {
      setState( () {
         _rating = 3;
      });
   }
   void _setRatingAsfor() {
      setState( () {
         _rating = 4;
      });
   }
   void _setRatingAsfive() {
      setState( () {
         _rating = 5;
      });
   }
   Widget build(BuildContext context) {
      double _size = 40;
      print(_rating);
      return Container(
        color: white,
        child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
              Container(
                 padding: EdgeInsets.all(0),
                 child: IconButton(
                    icon: (_rating >= 1 ? Icon(Icons.star, size: _size,) :
                    Icon(Icons.star_border, size: _size,)),
                    color: orange,
                    onPressed: _setRatingAsOne,
                    iconSize: _size,
                 ),
              ),
              Container(
                 padding: EdgeInsets.all(0),
                 child: IconButton(
                    icon: (_rating >= 2 ? Icon(Icons.star, size: _size,) :
                    Icon(Icons.star_border, size: _size,)),
                    color: orange,
                    onPressed: _setRatingAsTwo,
                    iconSize: _size,
                 ),
              ),
              Container(
                 padding: EdgeInsets.all(0),
                 child: IconButton(
                    icon: (_rating >= 3 ? Icon(Icons.star, size: _size,) :
                    Icon(Icons.star_border, size: _size,)),
                    color: orange,
                    onPressed: _setRatingAsThree,
                    iconSize: _size,
                 ),
              ),
              Container(
                 padding: EdgeInsets.all(0),
                 child: IconButton(
                    icon: (_rating >= 4 ? Icon(Icons.star, size: _size,) :
                    Icon(Icons.star_border, size: _size,)),
                    color: orange,
                    onPressed: _setRatingAsfor,
                    iconSize: _size,
                  
                 ),
              ),
              Container(
                 padding: EdgeInsets.all(0),
                 child: IconButton(
                    icon: (_rating >= 5 ? Icon(Icons.star, size: _size,) :
                    Icon(Icons.star_border, size: _size,)),
                    color: orange,
                    onPressed: _setRatingAsfive,
                    iconSize: _size,
                 ),
              ),
           ],
        ),
      );
   }
}
