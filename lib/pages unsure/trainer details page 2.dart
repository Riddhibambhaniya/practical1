import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Trainersdetails extends StatefulWidget {
  const Trainersdetails({Key? key}) : super(key: key);

  @override
  State<Trainersdetails> createState() => _TrainersdetailsState();
}

class _TrainersdetailsState extends State<Trainersdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                "Trainer Details",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => {}),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Trainner Name",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
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
              SizedBox(
                height: 03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Handler Name",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
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
              SizedBox(
                height: 010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Dog Name",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
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
              SizedBox(
                height: 012,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190.0),
                child: Text(
                  "ABC Private Limited",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 195.0),
                child: Text(
                  "Continuation, Initial",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 23.0),
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
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Text(
                      "06/07/2021",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
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
                height: 15,
              ),
              Container(
                height: 150,
                width: 380,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 010,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: CircleAvatar(
                              child: Text(
                                '1', // Replace this with the desired text
                                style: TextStyle(
                                  color: Colors
                                      .white, // Customize the text color if needed
                                  fontSize:
                                      20.0, // Adjust the font size of the text
                                  fontWeight: FontWeight
                                      .bold, // Adjust the font weight of the text
                                ),
                              ),
                              backgroundColor: Color(
                                  0xFF243B6A), // Customize the background color of the circle
                              radius: 15.0, // Adjust the size of the circle
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Heroin",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180.0),
                            child: Text(
                              "2g",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 70.0),
                        child: Text(
                          "Search Bay (mental Step)1.2m",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 010,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 02),
                            child: Text(
                              "30 min",
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
                              "Real",
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
                height: 20,
              ),
              Container(
                height: 150,
                width: 380,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 010,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: CircleAvatar(
                              child: Text(
                                '1', // Replace this with the desired text
                                style: TextStyle(
                                  color: Colors
                                      .white, // Customize the text color if needed
                                  fontSize:
                                      20.0, // Adjust the font size of the text
                                  fontWeight: FontWeight
                                      .bold, // Adjust the font weight of the text
                                ),
                              ),
                              backgroundColor: Color(
                                  0xFF243B6A), // Customize the background color of the circle
                              radius: 15.0, // Adjust the size of the circle
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Heroin",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180.0),
                            child: Text(
                              "3g",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 70.0),
                        child: Text(
                          "Search Bay (mental Step)1.2m",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 010,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 02),
                            child: Text(
                              "30 min",
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
                              "Real",
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
                height: 40,
              ),
              Container(width: 380,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 70,
                      padding: EdgeInsets.only(
                          left: 00, right: 00, top: 00),
                      child: ElevatedButton(
                        child: Text('REJECT'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          // side: BorderSide(color: Colors.yellow, width: 5),
                          textStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            //color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(00)),
                        ),
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   if (Email.text == "arun@gogosoon.com" &&
                          //       password.text == "qazxswedcvfr") {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Homescreen(
                          //             email: Email.text,
                          //           )),
                          //     );
                          //   } else {
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       const SnackBar(content: Text('Invalid Credentials')),
                          //     );
                          //   }
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Please fill input')),
                          //   );
                          // }
                        },
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 70,
                      padding: EdgeInsets.only(
                          left: 00, right: 00, top: 00),
                      child: ElevatedButton(
                        child: Text('APPROVE'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          // side: BorderSide(color: Colors.yellow, width: 5),
                          textStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            //color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(00)),
                        ),
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   if (Email.text == "arun@gogosoon.com" &&
                          //       password.text == "qazxswedcvfr") {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Homescreen(
                          //             email: Email.text,
                          //           )),
                          //     );
                          //   } else {
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       const SnackBar(content: Text('Invalid Credentials')),
                          //     );
                          //   }
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Please fill input')),
                          //   );
                          // }
                        },
                      ),
                    )


                  ],
                ),
              ),


            ],
          ),
        )));
  }
}
