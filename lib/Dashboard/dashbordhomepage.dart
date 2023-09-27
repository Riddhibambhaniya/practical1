import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Assigned CT Report.dart';
import '../adding trainer record/add trainer record.dart';
import '../ct directfile/CT direct file.dart';
import '../ct directfile/ct summary page 2.dart';
import '../ct directfile/ct summary.dart';
import '../dog profile/main dog profile.dart';
import '../dog profile/select dog.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) =>addtrainerrecord()));
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(backgroundColor:Colors.black12,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CTdirectfile()));
            },
            child: Icon(Icons.filter_alt),
          ),
          SizedBox(height: 16),
          FloatingActionButton(backgroundColor:Colors.black12,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => assignedctreports ()));
            },
            child: Icon(Icons.send),
          ),
          SizedBox(height: 16),
          FloatingActionButton(backgroundColor: Color(0xFF243B6A),
            onPressed: () {

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
        body: Center(
            child:SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
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
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Text(
                                                    selectedOption1,
                                                    style: TextStyle(fontSize: 17),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 90),
                                              child: IconButton(
                                                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SelectDog()))},
                                                iconSize: 25,
                                                icon: Icon(Icons
                                                    .keyboard_arrow_down_outlined),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>maindogprofile(name: '',)));
                },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 00.0),
                            child: Image.asset(
                              'assets/inter9 app/Group 237.jpg',
                              height: 60,
                              width: 80,
                              //fit: BoxFit.fill,
                            ),
                          ),
              )
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      width: 390,
                      padding: EdgeInsets.only(left: 10, right: 10),

                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>CTsummary2()));
                        },
                      child: Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 00),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 02),
                                  child: Text(
                                    "Indoors",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 02, right: 17),
                                  child: Text(
                                    "Building",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    "Continuation,Initial",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10, right: 17),
                                  child: Text(
                                    "2",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 10),
                              child: Text(
                                '''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "ABC Private Limited",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(left: 60.0, top: 8),
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 230,
                      width: 390,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>CTsummary1()));
                        },

                      child: Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 00),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 02),
                                  child: Text(
                                    "Indoors",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 02, right: 17),
                                  child: Text(
                                    "Building",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    "Continuation,Initial",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10, right: 17),
                                  child: Text(
                                    "2",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 10),
                              child: Text(
                                '''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "TSY Private Limited",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(left: 60.0, top: 8),
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
                    )
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 230,
                      width: 390,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 00),
                                  child: Text(
                                    "Drugs",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 02),
                                  child: Text(
                                    "Indoors",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 02, right: 17),
                                  child: Text(
                                    "Building",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                                  child: Text(
                                    "Continuation,Initial",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 10, right: 17),
                                  child: Text(
                                    "2",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 10),
                              child: Text(
                                '''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              width: 340,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 240.0, top: 8),
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
                      ),
                    ),
                  ],
                ),
              ),
            )));


  }
}


