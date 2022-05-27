import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class RechercheInput extends StatelessWidget {
  const RechercheInput({
    Key? key,
    required this.labelText,
    // ignore: prefer_equal_for_default_values
    this.obscured: false, required this.controller , String Function(String)? validator,
  }) : super(key: key);

  final String labelText;
  final bool obscured;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: notif,
      child: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Container(
        color: notif,
          child: TextFormField(
  
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
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 0),
                borderRadius: BorderRadius.circular(10),

              ),
              contentPadding: EdgeInsets.only(left: 15, top: 20, bottom: 20),
            ),
            //onChanged: (val) => userName = val,
            validator: (val) => val!.isEmpty ? null : null,
          ),
        ),
      ),
    );
  }
}