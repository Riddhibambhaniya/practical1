import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Forgot screen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

TextEditingController Name = TextEditingController();
TextEditingController Password = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child:
                Column(
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
                                width: 355,
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
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 220, top: 35),
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 36,
                                        color: Color(0xFF243B6A),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,left:05),
                                    child: Row(children: [
                                      Container(

                                        height: 100,
                                        width: 330,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, top: 20),
                                        child: TextFormField(
                                          controller: Name,
                                          decoration: new InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.deepPurple,
                                                  width: 0.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black38,
                                                  width: 0.0),
                                            ),
                                            hintText: 'Enter User Name',
                                            hintStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Color(0xFF243B6A),
                                            ),
                                            labelText: 'User Name',
                                            labelStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter correct User name';
                                            } else if (value != "riddhi") {
                                              return 'enter valid correct User  name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left:05),
                                    child: Row(children: [
                                      Container(
                                        //color:Colors.green,

                                        height: 60,
                                        width: 330,
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                        ),
                                        child: TextFormField(
                                          controller: Password,
                                          decoration: new InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.deepPurple,
                                                  width: 0.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black38,
                                                  width: 0.0),
                                            ),
                                            hintText: 'Enter Password ',
                                            hintStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Color(0xFF243B6A),
                                            ),
                                            labelText: 'Password',
                                            labelStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter correct Password';
                                            } else if (value != "1234567") {
                                              return 'enter valid Password ';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        //color: Colors.cyan,
                                        width: 340,
                                        height: 90,
                                        padding: EdgeInsets.only(
                                            left: 15, right: 15, top: 30),
                                        child: ElevatedButton(
                                          child: Text('LOGIN'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff243b6a),
                                            // side: BorderSide(color: Colors.yellow, width: 5),
                                            textStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              //color: Colors.black,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(04)),
                                          ),
                                          onPressed: () {
                                            if (_formKey.currentState!.validate()) {
                                              if (Name.text == "riddhi" &&
                                                  Password.text == "1234567") {
                                                Navigator.pushNamed(context, '/dashboard');

                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Invalid Credentials')),
                                                );
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content:
                                                        Text('Please fill input')),
                                              );
                                            }
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Forgotscreen()), // Navigate to ScreenB

                                        );
                                      },
                                      child: Text(
                                        'Forgot Password?',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 40),
                                        child: Text(
                                          "Don't have an account?",
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/registerscreen');
                                          },
                                          child: Text(
                                            'Register',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 18,
                                              color: Color(0xff243b6a),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ]))


                  ],
                )


            )
        )
    );
  }
}
