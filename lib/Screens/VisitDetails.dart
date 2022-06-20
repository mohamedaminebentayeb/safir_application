import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Components/TextInput.dart';
import 'package:safir_application/Components/theme.dart';
import 'package:safir_application/Screens/AddVisit.dart';
import 'package:safir_application/Screens/visitdetail.dart';

import '../Components/Buttom.dart';


class VisitDetails extends StatefulWidget {
  const VisitDetails({ Key? key }) : super(key: key);

  @override
  _VisitDetailsState createState() => _VisitDetailsState();
}

class _VisitDetailsState extends State<VisitDetails> {
  var items = [    
    'Historique',
    'Touriqtique',
    'Gastronomique',
    'Attraction',
    'shooping' ,
    'Réligieuse'
  
  ];
  var ind = [];
    late String value ;
    String dropdownvalue = 'shooping';  
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
    
    return  Scaffold(
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
                              context, '/AddVisitScreen');
                        },
                        // ignore: prefer_const_constructors
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                          color: Colors.black
                        ),
                      ),
                    
                      elevation: 0,
                     // leadingWidth: 70,
      ),
  body: Padding(
        padding: const EdgeInsets.only(left : 20.0 , right: 20),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
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
                  //  theme(title: "Historique",),
                     
                    SizedBox(
                      height: 0.020* MediaQuery.of(context).size.height,
                    ),
                     DropdownButtonFormField(
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
                    ind.add(2); 
                       setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                  
                  SizedBox(
                    height: 5,
                  ),
                      Row(
                        
                     children: [
                       if(ind.length != 0) Container(
                         height: 40,
                         width: 150,
                         child :themeCard(title: "Historique"),),
                         if(ind.length >=2 ) Container(
                         height: 40,
                         width: 150,
                         child :themeCard(title: "Gastronomique"),),
                         



                       
                     ],
                    ) ,
                    Row(children: [
                      if(ind.length >=2 ) Container(
                         height: 40,
                         width: 150,
                         child :themeCard(title: "Touriqtique"),)

                    ],),
                  

                  
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
          
            SizedBox(
                              height: 0.015* MediaQuery.of(context).size.height,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                 
                                        SizedBox(
                              width: 0.030* MediaQuery.of(context).size.width,
                            ),
                                     



                              ],
                            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Transform.translate(
                              offset: const Offset(-50,0),

                             child: AutoSizeText(
                                                'From ',
                                                maxLines: 2,
                                                style: TextStyle(
                                                  color:black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                                                         
                                                ),
                                              ),
                           ),
                         ],
                       ),
                      Row(
                        children: [
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
                                         width:  0.25*MediaQuery.of(context).size.height,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                              color: gris,
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only( left: 8.0),
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
                        ],
                      ),
                    ],
                  ),
                              SizedBox(
                              width: 0.030* MediaQuery.of(context).size.width,
                            ),
                               Column(
                                 children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Transform.translate(
                              offset: const Offset(-50,0),
                                            child: AutoSizeText(
                                                'Until',
                                                maxLines: 2,
                                                style: TextStyle(
                                                  color:black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                                                         
                                                ),
                                              ),
                                          ),
                                        ],
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
                                    width:  0.25*MediaQuery.of(context).size.height,                              
                                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: gris,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only( left: 8.0),
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
                                 ],
                               ),
                ],
              ),
                          SizedBox(
                              height: 0.060* MediaQuery.of(context).size.height,
                            ),
                      
                        Buttom(text: "Generer circuit", nextpage: "MapScreen"),

                                  
              
                     




          ]
          ),
        ),
      
        
      
    );
  }
}