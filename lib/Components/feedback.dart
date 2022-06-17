import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class feedback extends StatelessWidget {
  const feedback({
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
    return Container(
      color: white,
     height:0.0800* MediaQuery.of(context).size.height,
 
      child: TextFormField(
        maxLines: 200,
                           minLines: 150,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscured,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Gotham',
          fontWeight: FontWeight.w400,
          color: black,
        ),
        decoration: InputDecoration(
  hintText: "feedback",
        labelStyle: TextStyle(
          fontWeight: FontWeight.w100,
                  fontSize: 15,
                color:  Colors.black ,
              ),
        
         alignLabelWithHint: true,
         
          contentPadding: EdgeInsets.only(left: 15, top: 20, bottom: 20),
        ),
        //onChanged: (val) => userName = val,
        validator: (val) => val!.isEmpty ? 'Il faut remplire ce champ' : null,
      ),
    );
  }
}