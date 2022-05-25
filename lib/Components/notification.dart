import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';


    class notification extends StatelessWidget {
  final String name;
  final int point;
  final String photo;
  final int rank;
  notification({
    Key? key,
    this.name: "loading",
    this.photo: "default",
    this.point: 0,
    this.rank: 0,
  }) : super(key: key);

  @override
     Widget build(BuildContext context) {
    return Card(
      color: notif,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: green,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    foregroundColor: green,
                    backgroundImage:
                        AssetImage('Assets/$photo.png'),
                    radius: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                 SizedBox(
                              width:   0.020* MediaQuery.of(context).size.width, //screen height * 0.025,
                            ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: AutoSizeText(
                        'Comment était votre voyage ?',
                        maxLines: 1,
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AutoSizeText(
                      'Exprimez votre journée avec un simple emoji',
                      maxLines: 1,
                      style: TextStyle(
                              color: notifsubstitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,                      ),
                    ),
                  ],
                ),
              ],
            ),
         
          ],
        ),
      ),
     shape: RoundedRectangleBorder(
    side: BorderSide(color: green, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
    );
  }
  }



