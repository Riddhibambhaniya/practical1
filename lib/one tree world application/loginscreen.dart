import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'forgot password.dart';
class Loginscreen11 extends StatefulWidget {

  @override
  State<Loginscreen11> createState() => _Loginscreen11State();
}

class _Loginscreen11State extends State<Loginscreen11> {
  TextEditingController Name = TextEditingController();
  TextEditingController Password = TextEditingController();
  //final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(child: Form(
        key: _formKey,
          child: Column(
            children: [SizedBox(height: 40,),
              Container(
                child: Column(
                  children: [

                       Image.asset(
                        'assets/one tree world/login.jpg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),

                    SizedBox(height: 08,),

                    Text(
                         "LOGIN",
                         style:TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold,fontSize: 23

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),

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
                      } else if (value != "") {
                        return 'enter valid correct User  name';
                      }
                      return null;
                    },
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right:278.0),
                child: Text(
                    "Password",
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
                    hintText: 'Enter User Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFF243B6A),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Colors.black54,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter correct User name';
                    } else if (value != "") {
                      return 'enter valid correct User  name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:168.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forgotpasswordscreen11()),
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.green, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 00, vertical: 0),
                  ),
                  child: Text('Forgot Your Password ?', style:TextStyle(color: Colors.green,
                      fontWeight: FontWeight.w500,fontSize: 17
                  )),
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
                      child: Text('LOGIN'),
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
                          if (Name.text=="" &&
                              Password.text == "") {
                            Navigator.pushNamed(context, '/dashbordscreen11');
                          }
                        }
                      }
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
                 Text(
                    "OR LOGIN USING",
                    style:TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,fontSize: 17
                    )

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:151.0),
                child: Row(
                  children: [
                    Container( height: 35,width: 35,
                      decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            // Handle Facebook button press
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.facebookF,
                            size: 15.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Container( height: 35,width: 35,
                      decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Handle Google button press
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          size: 15.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text(
                  " DON'T HAVE ACCOUNT ? ",
                  style:TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,fontSize: 17
                  )

              ),
              SizedBox(height: 10,),
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
                          Navigator.pushNamed(context, '/registerscreen11');
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.green, // Text color
                          padding: EdgeInsets.symmetric(horizontal: 00, vertical: 0),
                        ),
                        child: Text('REGISTER NOW', style: TextStyle(fontSize: 16)),
                      ),

                    )
                  ],
                ),
              ),


            ],
          ),
        ),
        )
      ),
    );
  }
}