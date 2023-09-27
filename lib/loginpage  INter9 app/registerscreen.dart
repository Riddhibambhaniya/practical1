import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Dashboard/Dashboard - CT Selected.dart';
import 'dogprofile.dart';
import 'login.dart';

class registerscreen extends StatefulWidget {
  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  final _formKey = GlobalKey<FormState>();
  Color borderColor = Color(0xFF264683);
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Password1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
      Container(
          height: 800,
          width: 395,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: 16.0,
            ),
          ),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 400,
                  height: 660,
                  decoration: BoxDecoration(
                      //color: Colors.white
                      ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 175, top: 8),
                      child: Text(
                        "Register",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 31,
                          color: Color(0xFF243B6A),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset(
                      'assets/inter9 app/Mask Group (3).jpg',
                      // height: 100,
                      // width: 300,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(children: [
                          Row(children: [
                            Container(
                              height: 56,
                              width: 325,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 14),
                              child: TextFormField(
                                controller: Name,
                                decoration: new InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 2.0),
                                  ),
                                  hintText: 'Enter Your Name',
                                  hintStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF243B6A),
                                  ),
                                  labelText: 'Name',
                                  labelStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter correct email.address';
                                  } else if (value != "") {
                                    return 'enter valid Name address';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ]),
                          Row(children: [
                            Container(
                              height: 56,
                              width: 325,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 14),
                              child: TextFormField(
                                controller: Email,
                                decoration: new InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 1.0),
                                  ),
                                  hintText: 'Enter Email Address',
                                  hintStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF243B6A),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter correct email.address';
                                  } else if (value != "riddhi") {
                                    return 'enter valid email address';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ]),
                          Row(children: [
                            Container(
                              height: 56,
                              width: 325,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 14),
                              child: TextFormField(
                                controller: Password,
                                decoration: new InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 1.0),
                                  ),
                                  hintText: 'Enter Password',
                                  hintStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF243B6A),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some password';
                                  } else if (value != "1234567") {
                                    return 'enter valid password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ]),
                          Row(children: [
                            Container(
                              height: 56,
                              width: 325,
                              padding:
                                  EdgeInsets.only(left: 15, right: 15, top: 14),
                              child: TextFormField(
                                controller: Password1,
                                decoration: new InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 1.0),
                                  ),
                                  hintText: 'Enter Password',
                                  hintStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF243B6A),
                                  ),
                                  labelText: 'Password',
                                  labelStyle: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some password';
                                  } else if (value != "1234567") {
                                    return 'enter valid password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ]),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: 51,
                              width: 300,
                              child: DottedBorder(
                                child: Center(
                                  child: Text(
                                    "Upload Company Logo",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                borderType: BorderType.RRect,
                                radius: Radius.circular(10),
                                dashPattern: [10, 5, 10, 5, 10, 5],
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 325,
                                height: 70,
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                child: ElevatedButton(
                                  child: Text('REGISTER'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff243b6a),
                                    // side: BorderSide(color: Colors.yellow, width: 5),
                                    textStyle: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19,
                                      //color: Colors.black,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(04)),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      if (Email.text == "riddhi"&&
                                          Password.text == "1234567") {
                                        Navigator.pushNamed(
                                            context, '/dogprofile');
                                      }
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 325,
                            height: 50,
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Don't have an account?",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/loginscreen');
                                  },
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Color(0xff243b6a),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]))
                  ]),
                ),
              ])
            ],
          )),
    ])))));
  }
}
