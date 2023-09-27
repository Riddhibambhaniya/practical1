import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'adding trainer record/add trainer record.dart';

class assignedctreports extends StatefulWidget {
  const   assignedctreports  ({Key? key}) : super(key: key);

  @override
  State<assignedctreports  > createState() => _assignedctreportsState();
}

class _assignedctreportsState extends State<  assignedctreports  > {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text("Assigned CT Reports",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {Navigator.pop(context),}),
      ),
body:SingleChildScrollView(
  child:SafeArea(
    child:Column(
      children: [SizedBox(height: 30,),
        Container(height:190,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Jone Doe",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                    ),
                    Container(
                      child: Row(
                        children: [

                             IconButton(
                              icon: const Icon(Icons.edit_document,color: Colors.yellow,),

                              onPressed: () {
                                Navigator.push(
                                  context,MaterialPageRoute(builder: (context) => addtrainerrecord  ()),);
                              },
                            ),
                              IconButton(
                              icon: const Icon(Icons.delete,color: Colors.red,),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                        ],
                      ),
                    ), //IconB
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02),
                      child: Text("Indoors",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02,right:17),
                      child: Text("Building",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10),
                      child: Text("Continuation,Initial",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10,right:17),
                      child: Text("2",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10),
                      child: Text('''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.black,
                        ),maxLines: 2,
                      ),
                    ),
                Container(width: 340,
                  child: Padding(
                    padding: const EdgeInsets.only(left:240.0,top:8),
                    child: Text("06/07/2021",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                  ),
                ),

              ],
            ),

          ),
        ),
        SizedBox(height: 10,),
        Container(height:190,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Handler Name",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                    ),
                    Container(
                      child: Row(
                        children: [

                          IconButton(
                            icon: const Icon(Icons.edit_document,color: Colors.yellow,),
                            //tooltip: 'settings',
                            onPressed: () {
                              Navigator.push(
                                context,MaterialPageRoute(builder: (context) => addtrainerrecord  ()),);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete,color: Colors.red,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ), //IconB
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02),
                      child: Text("Indoors",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02,right:17),
                      child: Text("Building",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10),
                      child: Text("Initial,Refresher",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10,right:17),
                      child: Text("2",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0,top:10),
                  child: Text('''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.black,
                    ),maxLines: 2,
                  ),
                ),
                Container(width: 340,
                  child: Padding(
                    padding: const EdgeInsets.only(left:240.0,top:8),
                    child: Text("04/07/2021",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                  ),
                ),

              ],
            ),

          ),
        ),
        SizedBox(height:10,),
        Container(height:190,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Handler Name",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                    ),
                    Container(
                      child: Row(
                        children: [

                          IconButton(
                            icon: const Icon(Icons.edit_document,color: Colors.yellow,),
                            //tooltip: 'settings',
                            onPressed: () {
                              Navigator.push(
                                context,MaterialPageRoute(builder: (context) => addtrainerrecord  ()),);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete,color: Colors.red,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ), //IconB
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02),
                      child: Text("Indoors",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:02,right:17),
                      child: Text("Building",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10),
                      child: Text("Initial,Contingency",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:10,right:17),
                      child: Text("2",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0,top:10),
                  child: Text('''It is a long established fact that a reader will be
distracted by the readable content of a page layout.                      ''',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.black,
                    ),maxLines: 2,
                  ),
                ),
                Container(width: 340,
                  child: Padding(
                    padding: const EdgeInsets.only(left:240.0,top:8),
                    child: Text("02/07/2021",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                  ),
                ),

              ],
            ),

          ),
        )

      ],
    )
  )
)


    );
  }
}