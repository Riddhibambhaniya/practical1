import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practical1/loginpage%20%20INter9%20app/Forgot%20screen.dart';

class Forgotpasswordscreen11 extends StatefulWidget {
  @override
  State< Forgotpasswordscreen11> createState() => _Forgotpasswordscreen11State();
}

class _Forgotpasswordscreen11State extends State< Forgotpasswordscreen11> {
  TextEditingController Name = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(child: Form(
        key: _formKey,
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/one tree world/login.jpg',
                          height: 120,
                          width: 120,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 08,
                        ),
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left:40,right:40),
                          child: Text(
                            '''Enter your email address or username, we will send you reset password link your registered 
                                  email''',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 15
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0),
                    child: Text(
                        "Email / Username",
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
                        hintText: 'Enter User Email Address',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF243B6A),
                        ),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
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
                  Row(
                    children: [
                      Container(
                        //color: Colors.cyan,
                        width: 384,
                        height: 90,
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 30),
                        child: ElevatedButton(
                            child: Text('SEND EMAIL'),
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
                                if (Name.text == "riddhi" ) {
                                  Navigator.pushNamed(context, '/dashbordscreen11');

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
                              }}),
                      )
                    ],
                  ),
SizedBox(height: 150,),
                  Text(
                      " ALREADY HAVE ACCOUNT ? ",
                      style:TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,fontSize: 17
                      )

                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height:50 ,width:350 ,
                          decoration: BoxDecoration(

                            border: Border.all(
                              color: Colors.black12,
                              width: 2.0,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/loginscreen11');
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.green, // Text color
                              padding: EdgeInsets.symmetric(horizontal: 00, vertical: 0),
                            ),
                            child: Text('LOGIN NOW', style: TextStyle(fontSize: 16)),
                          ),

                        )
                      ],
                    ),
                  ),

                ]
                )
            )
        )
        )
    );
  }
}
