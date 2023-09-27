import 'package:flutter/material.dart';

import 'dashbord11.dart';
class Changepassword11 extends StatefulWidget {
  @override
  State< Changepassword11> createState() => _Changepassword11State();
}

class _Changepassword11State extends State< Changepassword11> {
  TextEditingController EnteroldPassword = TextEditingController();
  TextEditingController  NewPassword = TextEditingController();
  TextEditingController RepeatnewPassword= TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF79A206),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text("Change Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white,
                ),),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_circle_left_outlined, color: Colors.white,
                  size: 40,),
                onPressed: () => { Navigator.pushNamed(context, '/dashbordscreen11')}),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(child: Form(
            key: _formKey,
                child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right:210.0),
                        child: Text(
                            "Enter old Password",
                            style:TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w500,fontSize: 17
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 6,right:6
                        ),
                        height: 90,
                        width: 380,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 20),
                        child: TextFormField(
                          controller:EnteroldPassword,
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
                            hintText: ' Enter old Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF243B6A),
                            ),
                            labelText: 'old Password',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.black54,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter correct old Password';
                            } else if (value != "123") {
                              return 'enter valid correct old Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:200.0),
                        child: Text(
                            "Enter new Password",
                            style:TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w500,fontSize: 17
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 6,right:6
                        ),
                        height: 90,
                        width: 380,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 20),
                        child: TextFormField(
                          controller:  NewPassword,
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
                            hintText: 'Enter  New Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF243B6A),
                            ),
                            labelText: '  New Password',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.black54,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter correct   New Password';
                            } else if (value != "123") {
                              return 'enter valid correct   New Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:190.0),
                        child: Text(
                            "Repeat new Password",
                            style:TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w500,fontSize: 17
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 6,right:6
                        ),
                        height: 90,
                        width: 380,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 20),
                        child: TextFormField(
                          controller: RepeatnewPassword,
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
                            hintText: 'Enter Repeat new Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF243B6A),
                            ),
                            labelText: 'Repeat new Password',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.black54,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter correct Repeat new Password';
                            } else if (value != "123") {
                              return 'enter valid correct Repeat new Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 260,),
                      Row(
                        children: [
                          Container(
                            //color: Colors.cyan,
                            width: 384,
                            height: 90,
                            padding: EdgeInsets.only(
                                left: 00, right: 00, top: 30),
                            child: ElevatedButton(
                                child: Text('CHANGE PASSWORD'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:Color(0xFF79A206),
                                  // side: BorderSide(color: Colors.yellow, width: 5),
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(04)),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    if (
                                    EnteroldPassword.text == "123") {
                                      Navigator.pushNamed(
                                          context, '/dashbordscreen11');
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
                                }
                            ),
                          )
                        ],
                      ),




                    ]
                )
            )
        ))
    );
  }
}