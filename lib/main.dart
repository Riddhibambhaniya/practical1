import 'package:flutter/material.dart';
import 'package:practical1/one%20tree%20world%20application/loginscreen.dart';
import 'package:practical1/pages%20unsure/Trainer%20list.dart';
import 'package:practical1/pages%20unsure/trainer%20details%20page%202.dart';
import 'package:practical1/profile%20document%20upload%20pages/Newuploadpdf.dart';
import 'package:practical1/profile%20document%20upload%20pages/newuploadpdfcv.dart';
import 'package:practical1/profile%20document%20upload%20pages/newuploadpdfinsurance.dart';
import 'package:practical1/profile%20document%20upload%20pages/upload%20documents%2022.dart';
import 'package:practical1/profile%20document%20upload%20pages/upload%20documents.dart';
import 'package:practical1/profile%20document%20upload%20pages/uploaddocumentsCV.dart';
import 'package:practical1/profile%20document%20upload%20pages/uploaddocumentsinsurance.dart';
import 'package:practical1/profile%20document%20upload%20pages/uploadimage22CV.dart';
import 'package:practical1/profile%20document%20upload%20pages/uploadimage22insurance.dart';




import 'Assigned CT Report.dart';

import 'Dashboard/Add Event for Dog.dart';
import 'Dashboard/Dashboard - CT Selected.dart';
import 'Dashboard/dashbordhomepage.dart';
import 'Dashboard/dashbordschoolcalender.dart';
import 'OP Report - EDD and Security Flows/OP Upload pages.dart';
import 'OP Report - EDD and Security Flows/Op Report Start Time - EDD.dart';
import 'OP Report - EDD and Security Flows/opsumarry edd.dart';
import 'OP Report - EDD and Security Flows/opsumarry security.dart';
import 'OPS Filter pages/ops filter pages 1.dart';
import 'User profile/editprofile.dart';

import 'User profile/user profile1.dart';
import 'adding trainer record/add substance page 1.dart';
import 'adding trainer record/add trainer record.dart';
import 'adding trainer record/select handler.dart';
import 'android practical1/page1.dart';
import 'android practical1/page2.dart';
import 'android practical1/page3.dart';

import 'ct directfile/CT direct file.dart';
import 'ct directfile/ct summary page 2.dart';
import 'ct directfile/ct summary.dart';
import 'dog profile/add dog profile.dart';
import 'dog profile/edit dog profile.dart';
import 'dog profile/main dog profile.dart';
import 'dog profile/select dog.dart';

import 'extra page.dart';
import 'loginpage  INter9 app/Forgot screen.dart';
import 'loginpage  INter9 app/dogprofile.dart';

import 'loginpage  INter9 app/login.dart';
import 'loginpage  INter9 app/registerscreen.dart';
import 'loginpage  INter9 app/settings.dart';
import 'loginpage  INter9 app/splash screen.dart';
import 'one tree world application/All products.dart';
import 'one tree world application/Homepage1.dart';
import 'one tree world application/change password.dart';

import 'one tree world application/editprofile.dart';
import 'one tree world application/forgot password.dart';
import 'one tree world application/order.dart';
import 'one tree world application/dashbord11.dart';
import 'one tree world application/registerscreen.dart';
import 'one tree world application/shop.dart';
import 'one tree world application/splashscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
      theme: ThemeData(),
      // initialRoute: '/splashScreen', // Initial route
      // routes: {
      //   '/splashScreen':(context) =>SplashScreen(),
      //   '/registerscreen': (context) =>registerscreen(),
      //   '/dogprofile': (context) =>dogprofile(email: '',),
      //   '/loginscreen': (context) =>Loginscreen(),
      //   '/dashboard': (context) => dashbordctselect(email: '', name: '',),
      //   '/detailscreen':(context) => DetailScreen(),
      // },
    //   initialRoute: '/splashScreen', // Initial route
    //    routes: {
    //      '/splashScreen':(context) =>page1(),
    //      '/dashbord':(context) =>page2(),
    //      '/detailscreen':(context) =>page3(),
    //
    // },
    //   initialRoute: '/splashscreen11', // Initial route
    //   routes: {
    //     '/splashscreen11':(context) =>Splashscreen1(),
    //     '/loginscreen11': (context) =>Loginscreen11(),
    //     '/registerscreen11': (context) =>Registerscreen11(),
    //     '/dashbordscreen11': (context) => Dashbordscreen11(),
    //
    //   },

      home:Loginscreen(),
    );
  }
}
