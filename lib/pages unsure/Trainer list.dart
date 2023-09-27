import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Trainers extends StatefulWidget {
  const   Trainers  ({Key? key}) : super(key: key);

  @override
  State<Trainers> createState() => _TrainersState();
}

class _TrainersState extends State<  Trainers  > {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text("Trainers",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {}),
      ),
      body:SingleChildScrollView(
      child:SafeArea(
      child:Column(
      children: [SizedBox(height: 20,),
        Container(height:230,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Trainer Name",
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
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete,color: Colors.red,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.share,color: Colors.black,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),

                        ],
                      ),
                    ), //IconB
                  ],),
                Padding(
                  padding: const EdgeInsets.only(right:140.0),
                  child: Text("ABC Company Limited",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(
                  height: 05,
                ),

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
        SizedBox(
          height: 05,
        ),
        Container(height:230,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Trainer Name",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            shape: CircleBorder(),
                            checkColor: Colors.white,
                            fillColor:
                            MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors
                                    .green; // Color when checkbox is selected
                              }
                              return Colors
                                  .lightGreen; // Color when checkbox is unselected
                            }),
                          ),

                          IconButton(
                            icon: const Icon(Icons.share,color: Colors.black,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),

                        ],
                      ),
                    ), //IconB
                  ],),
                Padding(
                  padding: const EdgeInsets.only(right:140.0),
                  child: Text("ABC Company Limited",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(
                  height: 05,
                ),

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
        SizedBox(
          height: 05,
        ),
        Container(height:230,width:390,padding: EdgeInsets.only(left:10,right:10),
          child: Card(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,top:00),
                      child: Text("Trainer Name",
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
                            icon: const Icon(Icons.hourglass_full,color: Colors.yellow,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),

                          IconButton(
                            icon: const Icon(Icons.share,color: Colors.black,),
                            //tooltip: 'settings',
                            onPressed: () {},
                          ),

                        ],
                      ),
                    ), //IconB
                  ],),
                Padding(
                  padding: const EdgeInsets.only(right:140.0),
                  child: Text("ABC Company Limited",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(
                  height: 05,
                ),

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

]
      )
    )
      )
    );
  }
}