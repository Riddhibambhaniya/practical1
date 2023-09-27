import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practical1/loginpage%20%20INter9%20app/registerscreen.dart';
class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // Perform any initialization here if needed
    Future.delayed(Duration(seconds: 2), () {

      bool isLoggedIn = true; // Change this based on your logic
      if (isLoggedIn) {
        Navigator.pushNamed(context, '/registerscreen');// Navigate to the profile screen
      } else {
        Navigator.pushNamed(context, '/login'); // Navigate to the login screen
      }
    });

    return Scaffold(
      body: SafeArea(

          child: Column(
            children: [
                Container(
              child:InkWell(
              child: Image.asset(
                'assets/inter9 app/Splash Screen.jpg',
                 height: 800,
                 width: 5000,
                fit: BoxFit.fill,
              ),
              onTap: (){
              }

              )
                )

            ],
          ),


        )

    //   Container(
    // child:InkWell(
    // child: Image.asset(
    //   'assets/inter9 app/Splash Screen.jpg',
    //   // height: 800,
    //   // width: 5000,
    //   fit: BoxFit.fill,
    // ),
    // onTap: (){
    // }
    //
    // )
    //   )
    );
  }
}




