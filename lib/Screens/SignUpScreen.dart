// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

import '../Components/TextInput.dart';

  late GlobalKey _formKey;
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);
  
  get formKey => null;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      child :Column(       
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
                             Transform.translate(
                                offset: const Offset(0,-20),
                                
                               child :   SignUpSignUpHeader(),
                              ),
                                  RichText(
                                         text: TextSpan(
                                           style: const TextStyle(
                                              color: Color.fromARGB(244, 140, 139, 139),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                            ),
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: <TextSpan>[
                                               TextSpan(text: "Vous avez deja un compte ?"),
                                              TextSpan(text: '   connectez vous' , style: const TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(218, 6, 206, 189))),
                                             
                                             
                                                                                      ],
                                             ),
                                        ),
                                            SizedBox(
                  height: 0.004* MediaQuery.of(context).size.height,
                ),

                                      
   

                                        
            

        
        
        
        
       
         
      ],)
      
    );
  }
}
class SignUpSignUpHeader extends StatelessWidget {
  const SignUpSignUpHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final _formKey = GlobalKey<FormState>();
    return Container(
      color: Colors.white,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
               const Image(
              height: 150,
              width: 100,
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
                                          TextSpan(text: 'In' , style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromARGB(220, 6, 206, 209))),
                                          TextSpan(text: 'scrire', style: TextStyle(color: Colors.black,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 30,
                                                                              )),
                                      
                                                                                  ],
                                         ),
                                    )
                                    ),
                                    SignCard(formKey: _formKey),
                                        

                                    



      ],)
      
    );
  }
}

// ignore: must_be_immutable
class SignCard extends StatefulWidget {
  SignCard({
    Key? key,
    
      required this.formKey,
  }) : super(key: key);
  
  GlobalKey<FormState> formKey;

  @override
  _SignCardState createState() => _SignCardState();
}

class _SignCardState extends State<SignCard> {
  late TextEditingController _email;
  late TextEditingController _username;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
     _username = TextEditingController();

    _password = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding:const EdgeInsets.fromLTRB(20, 0.0, 20, 20),
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
                                      "Nom d'utilisateur",
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
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                CustomTextForm(
                  labelText: 'aymen213',
                  controller: _username,
                   
                ),
                Row(
                  children: [
                   
                 SizedBox(
                  height: 0.020* MediaQuery.of(context).size.height,
                ),
                
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
                  height: 0.005* MediaQuery.of(context).size.height,
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
                  height: 0.005* MediaQuery.of(context).size.height,
                ),
                
                CustomTextForm(
                  labelText: 'password.dz',
                  controller: _password,
                  obscured: true, 
                   
                ),
                SizedBox(
                  height: 0.020* MediaQuery.of(context).size.height,
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     AutoSizeText(
                                      'Confirmer le mot de passe',
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
                  height: 0.005* MediaQuery.of(context).size.height,
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
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: TextButton(
                          child:  SizedBox(
                            height: 24,
                            child: Text(
                              "Inscrire",
                              style:  TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.005* MediaQuery.of(context).size.height,
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
                  height: 0.005* MediaQuery.of(context).size.height,
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
               
         
                 


              ],
            ),
          ),
        ),
        color: Colors.white,
      ),
    );
    
  }
}