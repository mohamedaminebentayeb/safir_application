import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/TextInput.dart';
import 'package:safir_application/Screens/AddVisit.dart';

import '../Components/Buttom.dart';

class VisitDetails extends StatefulWidget {
  const VisitDetails({ Key? key }) : super(key: key);

  @override
  _VisitDetailsState createState() => _VisitDetailsState();
}

class _VisitDetailsState extends State<VisitDetails> {
     late TextEditingController _theme;
       late DateTime _dateTime =  DateTime. now();
       String _dateValidate = "Date de Naissance";

  @override
  void initState() {
    super.initState();
    _theme = TextEditingController();
  }
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
                            context, '/planetChoice');
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
                    height: 0.090* MediaQuery.of(context).size.height,
                  ),
         Row(
                    children: [
                      AutoSizeText(
                                        'Sélectionnez les \nthemes de votre visite',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color:black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                                                                 
                                        ),
                                      ),
                    ],
                  ),
                   
                  SizedBox(
                    height: 0.020* MediaQuery.of(context).size.height,
                  ),

                   CustomTextForm(
                  labelText: 'HIstorique',
                  controller: _theme,
                   
                ),
                 SizedBox(
                    height: 0.10* MediaQuery.of(context).size.height,
                  ),
                            
         Row(
                    children: [
                      AutoSizeText(
                                        'Sélectionnez la durée \nde votre visite',
                                        maxLines: 2,
                                        style: TextStyle(
                                          color:black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                                                                 
                                        ),
                                      ),
                    ],
                  ),
        Container(
 
 ),
  SizedBox(
                    height: 0.015* MediaQuery.of(context).size.height,
                  ),
     FormField(
                  /// champ pour selectioner la date de naissance de l'utilisateur
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (e) {
                    _dateValidate = _dateTime == null
                        ? 'Il faut selectionner une date'
                        : "";
                  },
                  builder: (FormFieldState<dynamic> e) => Container(
                    height:60 ,
                   // width: ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: gris,
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showDatePicker(
                            initialEntryMode: DatePickerEntryMode.input,
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now(),
                          ).then((value) {
                            setState(() {
                              _dateTime = value!;
                            });
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                            Text(
                            
                              _dateTime == null
                                  ? _dateValidate
                                  : _dateTime.toString().split(" ")[0],
                              style: TextStyle(
                                color: _dateValidate ==
                                        "Il faut selectionner une date"
                                    ? Colors.red
                                    : null,
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                              ),
                              
                            ),
                             Icon(
                              Icons.calendar_today,
                              color: _dateValidate !=
                                      "Il faut selectionner une date"
                                  ? green
                                  : gris,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                    height: 0.30* MediaQuery.of(context).size.height,
                  ),
            
            
                          Buttom(text: "Generer circuit", nextpage: "hkhkhk"),

            
                   




      ]),
    ),
    
      
    );
  }
}