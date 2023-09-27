import 'package:flutter/material.dart';
import 'package:practical1/android%20practical1/page2.dart';


class page1 extends StatefulWidget {


  @override
  State<page1> createState() => _page1State();
}
class _page1State extends State<page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
      child:InkWell(
    child: Image.asset(
    'assets/iPhone 11 Pro Max - 19.png',
    // height: 100,
    width: 5000,
    fit: BoxFit.fill,
    ),
          onTap: (){
    Navigator.pushNamed(context, '/dashbord');}

          )
      )
    );
  }
}
