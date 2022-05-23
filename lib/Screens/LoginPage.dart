// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

import '../Components/TextInput.dart';

  late GlobalKey _formKey;
class LOginPage extends StatefulWidget {
  const LOginPage({ Key? key }) : super(key: key);
  
  get formKey => null;

  @override
  _LOginPageState createState() => _LOginPageState();
}

class _LOginPageState extends State<LOginPage> {
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: white,
      child :Column(children: <Widget>[
                             Transform.translate(
                                offset: const Offset(0,-20),
                                
                               child :  const Header(),
                              )
   

                                        
            

        
        
        
        
       
         
      ],)
      
    );
  }
}
class Header extends StatelessWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final _formKey = GlobalKey<FormState>();
    return Container(
      color: Colors.white,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
               const Image(
              height: 200,
              width: 150,
              image: const AssetImage('Assets/safirColored.png'),
            ),
          Transform.translate(
                                offset: const Offset(0,-20),
                                child:  RichText(
                                     text: const TextSpan(
                                       style: TextStyle(
                                          color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: 'SE ' , style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(220, 6, 206, 209))),
                                          TextSpan(text: 'CONNECTER', style: TextStyle(color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 30,
                                                                              )),
                                      
                                                                                  ],
                                         ),
                                    )
                                    ),
                                    LogCard(formKey: _formKey),
                                            RichText(
                                         text: TextSpan(
                                           style: const TextStyle(
                                              color: Color.fromARGB(244, 140, 139, 139),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                            ),
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: <TextSpan>[
                                               TextSpan(text: "Vous n'avez pas de compte ?"),
                                              TextSpan(text: '   Inscriez vous' , style: const TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(218, 6, 206, 189))),
                                             
                                             
                                                                                      ],
                                             ),
                                        ),

                                    



      ],)
      
    );
  }
}

// ignore: must_be_immutable
class LogCard extends StatefulWidget {
  LogCard({
    Key? key,
    
      required this.formKey,
  }) : super(key: key);
  
  GlobalKey<FormState> formKey;

  @override
  _LogCardState createState() => _LogCardState();
}

class _LogCardState extends State<LogCard> {
   late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:const EdgeInsets.all(10),
      child: Material(
               
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Form(
            key: widget.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    AutoSizeText(
                                      'Email',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        
                                      ),
                                    ),
                  ],
                ),
                  SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                CustomTextForm(
                  labelText: 'jm_bentayeb@esi.dz',
                  controller: _email,
                   
                ),
                 SizedBox(
                  height: 0.020* MediaQuery.of(context).size.height,
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     AutoSizeText(
                                      'Password',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        
                                      ),
                                    ),
                     AutoSizeText(
                                      'Incorrect',
                                      maxLines: 1,
                                      style: TextStyle(
                                        color:gris,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        
                                      ),
                        ),
                   ],
                 ),
                  SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                CustomTextForm(
                  labelText: 'password.dz',
                  controller: _password,
                  obscured: true, 
                   
                ),
                 SizedBox(
                  height: 0.010* MediaQuery.of(context).size.height,
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AutoSizeText(
                                          'Mot de passe oublier ?',
                                          maxLines: 1, 
                                          style: TextStyle(
                                            color:gris,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            
                                          ),
                            ),
                      ],
                    ),
                    SizedBox(
                  height: 0.050* MediaQuery.of(context).size.height,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: const Text(
                          "Se connecter",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                         
                   
//
                          
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          backgroundColor: green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.030* MediaQuery.of(context).size.height,
                ),
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                                          'ou continuer avec',
                                          maxLines: 1, 
                                          style: TextStyle(
                                            color:gris,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            
                                          ),
                            ),
                      ],
                    ),
                      SizedBox(
                  height: 0.040* MediaQuery.of(context).size.height,
                ),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                          height: 50,
                          width: 50,
                          image: AssetImage('Assets/google.png'),
                         ),
                       Image(
                          height: 50,
                          width: 50,
                          image: AssetImage('Assets/facebook.png'),
                         ),
                      
                          
                     

                  ],
                             
                ),
                SizedBox(
                  height: 0.050* MediaQuery.of(context).size.height,
                ),
         
                 


              ],
            ),
          ),
        ),
        color: Colors.white,
      ),
    );
    
  }
}