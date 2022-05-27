import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class rechercheBar extends StatelessWidget {
  const rechercheBar({ Key? key,
    required this.labelText,
    // ignore: prefer_equal_for_default_values
    this.obscured: false, required this.controller , String Function(String)? validator,
  }) : super(key: key);

  final String labelText;
  final bool obscured;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Row(children: [
        TextFormField(
  
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: obscured,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.w400,
              color: green,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: white,
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        print('Search');
                      },
                    ),
  hintText: "Recherche...",
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
                      fontSize: 15,
                    color:  gris ,
                  ),
            
             alignLabelWithHint: true,
              
          
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 128, 128, 128), width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: green, width: 1),
                borderRadius: BorderRadius.circular(10),

              ),
              contentPadding: EdgeInsets.only(left: 15, top: 20, bottom: 20),
            ),
            //onChanged: (val) => userName = val,
            validator: (val) => val!.isEmpty ? null : null,
          ),
          IconButton(
                      onPressed: () {
                        //un boutton pour retourner a la page planete choice
                        Navigator.pushReplacementNamed(
                            context, '/planetChoice');
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 30,
                        color: Colors.black
                      ),
                    ),





      ],)
      
    );
  }
}