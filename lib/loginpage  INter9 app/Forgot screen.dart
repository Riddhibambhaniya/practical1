import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Dashboard/Dashboard - CT Selected.dart';
import 'login.dart';

class Forgotscreen extends StatefulWidget {
  const Forgotscreen({Key? key}) : super(key: key);

  @override
  State<Forgotscreen> createState() => _ForgotscreenState();
}

TextEditingController Email = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _ForgotscreenState extends State<Forgotscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      children: [
        Container(
            height: 810,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF243B6A),
                width: 20.0,
              ),
            ),
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    color: Color(0xFF243B6A),
                    width: 350,
                    height: 230,
                  ),
                  Positioned(
                    top: 60,
                    left: 30,
                    child: Image.asset(
                      'assets/inter9 app/Layer_x0020_1 (1).jpg',
                      // height: 100,
                      // width: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 140,
                    child: Text(
                      "The K9",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, right: 10),
                      child: Text(
                        "Forgot  Password ",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 36,
                          color: Color(0xFF243B6A),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(children: [
                        Container(
                          height: 100,
                          width: 340,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            controller: Email,
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 0.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black38, width: 0.0),
                              ),
                              hintText: 'Enter Email Address',
                              hintStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF243B6A),
                              ),
                              labelText: 'Email  Address',
                              labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter correct Email  Address';
                              } else if (value !=
                                  "riddhisorathiya176@gmail.com") {
                                return 'enter valid Email  Address';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            //color: Colors.cyan,
                            width: 320,
                            height: 90,
                            padding: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              child: Text('SEND MAIL '),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff243b6a),
                                // side: BorderSide(color: Colors.yellow, width: 5),
                                textStyle: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  //color: Colors.black,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(04)),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (Email.text ==
                                      "riddhisorathiya176@gmail.com") {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              dashbordctselect(
                                                email: Email.text,
                                                name: '',
                                              )),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Invalid Credentials')),
                                    );
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please fill input')),
                                  );
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Loginscreen');
                        },
                        child: Text(
                          'Back to Login',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ]))
      ],
    ))));
  }
}
