import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    

             
    return Material(
      child: Container(
      
        color:Color.fromARGB(218, 6, 206, 189),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
               Safir(),
               Circular(),

          ],
        ),
      ),
    );
            
            
            

                 




                                  
    
  }
}

class Safir extends StatelessWidget {
  const Safir({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
    
      children: [
        Image(
          height: 220,
          width: 150,
          image: AssetImage('Assets/safir.png'),
        ),
    ],
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
          child :  SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        )

    );
  }
}
