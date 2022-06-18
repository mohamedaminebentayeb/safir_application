import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/Visitcard2.dart';
import 'package:safir_application/Components/rechercheInput.dart';
import 'package:safir_application/Screens/WelcomeScreen.dart';

class MesVisites extends StatefulWidget {
  const MesVisites({ Key? key }) : super(key: key);

  @override
  _MesVisitesState createState() => _MesVisitesState();
}

class _MesVisitesState extends State<MesVisites> {
      late TextEditingController _recherche;

  @override
  void initState() {
    super.initState();
    _recherche = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       color: notif,

      child: Padding(
              padding: const EdgeInsets.all(10.0),

        child: Column(
          children: [
  Image(
              height: 100,
              width: 110,
              image: AssetImage('Assets/safirColored.png'),
            ),               Transform.translate(
                                offset: const Offset(0,-15),
               child : DefaultTextStyle(
                          // ignore: prefer_const_constructors
                          style: TextStyle(  color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,),
                
                               child:AutoSizeText(
                                  'Mes Visites',
                                  maxLines: 1,
                                  style: TextStyle(
                                  
                                    
                                  ),
                               textAlign: TextAlign.center,
                                ),
        
                ),
               ),
             
            
              
                     
                
           Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             
            Expanded(child:RechercheInput(labelText: 'Recherche..' , 
                       controller:_recherche ),  
                       ) ,
                     Transform.translate(
                                offset: const Offset(-10,-8),
                                child :   Material(color: notif,
                   
                                child :Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: IconButton(
                                    onPressed: () {
                                      //un boutton pour retourner a la page planete choice
                                      Navigator.pushReplacementNamed(
                                          context, '/planetChoice');
                                    },
                                    // ignore: prefer_const_constructors
                                    icon: Icon(
                                      Icons.filter_alt_outlined,
                                      size: 50,
                                      color: green
                                    ),
                                  ),
                                ),
                   
                   
                   ),
                     ),
          
                       
                    
                    

                
           ],),
                     // Scrolable(),
                     GestureDetector(
    onTap: () { 
           Navigator.pushReplacementNamed(
                            context, '/visitdetail');
    },
    child:  Container(
                           width: 0.920* MediaQuery.of(context).size.width,
                           child: VisitCard2(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',)),
),
              GestureDetector(
    onTap: () { 
      Navigator.pushReplacementNamed(
                            context, '/visitdetail');
    },
    child:  Container(
                           width: 0.920* MediaQuery.of(context).size.width,
                           child: VisitCard2(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',)),
)


                        
                          
                         
                    
        
                   
          
                              
        
           
                    
         
      
         
                          








      
           
          ]
        )
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
 width:  0.800* MediaQuery.of(context).size.width,
       color : notif,
       child: SingleChildScrollView(
                 physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
             
            
                         VisitCard2(title: "Visite bab elouad", image : "circuit1" , etat: 'Terminé',),
                         
              ],
       
        
        
                
                    
          ),
           ),
        ));
        
    
     

      
    
  }
}