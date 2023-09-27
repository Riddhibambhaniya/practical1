import 'package:flutter/material.dart';
import 'package:practical1/loginpage%20%20INter9%20app/registerscreen.dart';
import 'package:practical1/loginpage%20%20INter9%20app/splash%20screen.dart';

import '../Dashboard/Dashboard - CT Selected.dart';
import '../dog profile/main dog profile.dart';
import 'dogprofile.dart';
import 'login.dart';



class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/ splashscreen', // Initial route
      routes: {
        ' / splashscreen':(context) =>SplashScreen(),
        '/registerscreen': (context) =>registerscreen(),
        '/dogprofile': (context) =>dogprofile(email: '',),
        '/Loginscreen': (context) =>Loginscreen(),
        '/dashboard': (context) => dashbordctselect(email: '', name: '',),

      },
    );

  }
}

