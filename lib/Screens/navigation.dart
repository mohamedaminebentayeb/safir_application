import 'package:flutter/material.dart';
import 'package:safir_application/Colors/Colors.dart';
import 'package:safir_application/Screens/AddVisit.dart';
import 'package:safir_application/Screens/Explorer.dart';
import 'package:safir_application/Screens/MesVisitesScreen.dart';
import 'package:safir_application/Screens/NotificationPage.dart';
import 'package:safir_application/Screens/progilePage.dart';

class Navigation extends StatefulWidget {
   Navigation({ Key? key , required this.currentTab , required this.currentScreen }) : super(key: key);
 Widget currentScreen = ExplorerPage(); 
   int currentTab = 0; // to kee
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> screens = [
    ProfilPage(),
    ExplorerPage(),
    AddVisitScreen(),
    NotificationsScreen(),
    MesVisites(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
// Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: widget.currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        child: Icon(Icons.add ,
          color: white,),
        onPressed: () {
          Navigator.pushReplacementNamed(
                            context, '/AddVisitScreen');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width : 0.030* MediaQuery.of(context).size.width,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.currentScreen =
                            ExplorerPage(); // if user taps on this dashboard tab will be active
                       widget. currentTab = 0;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 40,
                          color: widget.currentTab == 0 ? green : Colors.grey,
                        ),
                    
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    width : 0.020* MediaQuery.of(context).size.width,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                      widget.currentScreen =
                            MesVisites(); // if user taps on this dashboard tab will be active
                        widget.currentTab = 1;
                      });
                    },
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,                      children: <Widget>[
                        Container(
                           height: 30,
                           width : 30,


                          child :  ImageIcon(
                          
                        AssetImage("Assets/eteneraire.png" ),
                          color: widget.currentTab == 1 ? green : Colors.grey,
                              size: 24,
                          ),
                        )
                      
                      
                      ],
                    ),
                  ),
                  
                ],
              ),

              // Right Tab bar icons

              Row(
            crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                       widget.currentScreen =
                            NotificationsScreen(); // if user taps on this dashboard tab will be active
                        widget.currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          size: 40,
                          
                          color: widget.currentTab == 2 ? green : Colors.grey,
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    width : 0.020* MediaQuery.of(context).size.width,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        widget.currentScreen =
                            ProfilPage(); // if user taps on this dashboard tab will be active
                        widget.currentTab = 3;
                      });
                    },
                    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,                      children: <Widget>[
                         Container(
                           height: 30,
                           width : 30,


                          child :  ImageIcon(
                          
                        AssetImage("Assets/profile.png" ),
                          color: widget.currentTab == 3 ? green : Colors.grey,
                              size: 24,
                          ),
                        ),
                       
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    width : 0.030* MediaQuery.of(context).size.width,
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}