import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../OP Report - EDD and Security Flows/Op Report Start Time - EDD.dart';
import '../OPS Filter pages/ops filter pages 1.dart';
import '../adding trainer record/add trainer record.dart';
import '../adding trainer record/select handler.dart';
import '../dog profile/select dog.dart';


class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  bool _showSubButtons = false;
  String selectedOption1 = 'Dog Name';
   List<String> dropdownOptions1 = ['Dog Name', 'Others'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButton: _showSubButtons
            ? Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(backgroundColor:Colors.black12,
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => addtrainerrecord()));
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 16),
            FloatingActionButton(backgroundColor:Colors.black12,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => opsfilterpages()));
              },
              child: Icon(Icons.filter_alt),
            ),
            SizedBox(height: 16),
            FloatingActionButton(backgroundColor:Colors.black12,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => opreport()));
              },
              child: Icon(Icons.send),
            ),
            SizedBox(height: 16),
            FloatingActionButton(backgroundColor: Color(0xFF243B6A),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
              },
              child: Icon(Icons.arrow_drop_down_circle_rounded),
            ),
          ],
        )
            : FloatingActionButton(backgroundColor: Color(0xFF243B6A),
          onPressed: () {
            setState(() {
              _showSubButtons = true;
            });
          },
          child: Icon(_showSubButtons
              ? Icons.keyboard_arrow_down
              : Icons.keyboard_arrow_up_outlined),
        ),
    body:Center(
  child: SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 600,
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          height: 70,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 5),
                                        child: Text('Dog',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Colors.grey,
                                            )),
                                      ),
                                      SizedBox(height: 05),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 30),
                                        child: Text(
                                          selectedOption1,
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 90),
                                    child: IconButton(
                                      onPressed: () => {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectDog()))
                                      },
                                      iconSize: 25,
                                      icon: Icon(
                                          Icons.keyboard_arrow_down_outlined),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 00.0),
                  child: Image.asset(
                    'assets/inter9 app/Group 237.jpg',
                    height: 60,
                    width: 80,
                    //fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width:450,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 00),
                        child: Text(
                          "EDD",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.edit_document,
                                color: Colors.yellow,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ), //IconB
                    ],
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130.0),
                    child: Text(
                      "Building,Perimeter.Area",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [

                         IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.location_pin,
                            color: Colors.redAccent,
                          ),
                        ),


                         Text(
                          "HUI 5TZ",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 150.0, top: 00, right: 17),
                        child: Text(
                          "30 min",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [

                        IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.watch_later_sharp,
                            color: Color(0xFF243B6A),
                          ),
                        ),


                         Text(
                          "9:00 am to 6:00 pm",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 8),
                          child: Text(
                            "06/07/2021",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            width: 390,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 00),
                        child: Text(
                          "Security",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.edit_document,
                                color: Colors.yellow,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ), //IconB
                    ],
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.shield_moon_rounded,
                            color: Color(0xFF243B6A),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 00),
                        child: Text(
                          "Cold",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 180.0, top: 00, right: 17),
                        child: Text(
                          "30 min",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.watch_later_sharp,
                            color: Color(0xFF243B6A),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 00),
                        child: Text(
                          "9:00 am to 6:00 pm",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 00, right: 17),
                        child: Text(
                          "10/07/2021",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            width: 390,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 00),
                        child: Text(
                          "Security",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.edit_document,
                                color: Colors.yellow,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ), //IconB
                    ],
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.sunny,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 00),
                        child: Text(
                          "Warm",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 180.0, top: 00, right: 17),
                        child: Text(
                          "30 min",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: IconButton(
                          onPressed: () => {},
                          iconSize: 25,
                          icon: Icon(
                            Icons.watch_later_sharp,
                            color: Color(0xFF243B6A),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 00),
                        child: Text(
                          "9:00 am to 6:00 pm",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 00, right: 17),
                        child: Text(
                          "10/07/2021",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ) ));


  }
}



