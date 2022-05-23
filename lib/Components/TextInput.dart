import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
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
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscured,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Gotham',
        fontWeight: FontWeight.w100,
        color: Colors.black,
      ),
      decoration: InputDecoration(
  hintText: labelText,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w200,
                fontSize: 20,
              color:  Colors.black ,
            ),
      
       alignLabelWithHint: true,
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 143, 31, 23), width: 0.1),
            borderRadius: BorderRadius.circular(10)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 143, 31, 23), width: 0.1),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 128, 128, 128), width: 0.1),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: green, width: 1),
          borderRadius: BorderRadius.circular(10),

        ),
        contentPadding: EdgeInsets.only(left: 15, top: 20, bottom: 20),
      ),
      //onChanged: (val) => userName = val,
      validator: (val) => val!.isEmpty ? 'Il faut remplire ce champ' : null,
    );
  }
}