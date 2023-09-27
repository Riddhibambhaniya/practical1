import 'package:flutter/material.dart';


class Registerscreen11 extends StatefulWidget {
  @override
  State<Registerscreen11> createState() => _Registerscreen11State();
}

class _Registerscreen11State extends State<Registerscreen11> {
  TextEditingController Name = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController RepeatPassword = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(child: Form(
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
              "REGISTER",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 24,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 270.0),
        child: Text("First Name",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17)),
      ),

      Container(
        margin: EdgeInsets.only(left: 6, right: 6),
        height: 90,
        width: 380,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: TextFormField(
          controller: Name,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple, width: 0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38, width: 0.0),
            ),
            hintText: 'Enter First Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xFF243B6A),
            ),
            labelText: 'First Name',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Colors.black54,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter correct First Name';
            } else if (value != "riddhi") {
              return 'enter valid correct First Name';
            }
            return null;
          },
        ),
      ),


      Padding(
        padding: const EdgeInsets.only(right: 240.0),
        child: Text("Email Address",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17)),
      ),
      Container(
        margin: EdgeInsets.only(left: 6, right: 6),
        height: 90,
        width: 380,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: TextFormField(
          controller: Email,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple, width: 0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38, width: 0.0),
            ),
            hintText: 'Enter Email Address',
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
              return 'Please enter correct Email Address';
            } else if (value != "riddhi") {
              return 'enter valid correct Email Address';
            }
            return null;
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 278.0),
        child: Text("Password",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17)),
      ),
      Container(
        margin: EdgeInsets.only(left: 6, right: 6),
        height: 90,
        width: 380,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: TextFormField(
          controller: Password,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple, width: 0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38, width: 0.0),
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
              return 'Please enter correct Password';
            } else if (value != "123") {
              return 'enter valid correct Password';
            }
            return null;
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 230.0),
        child: Text(" Repeat Password",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17)),
      ),
      Container(
        margin: EdgeInsets.only(left: 6, right: 6),
        height: 90,
        width: 380,
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: TextFormField(
          controller: RepeatPassword,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple, width: 0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38, width: 0.0),
            ),
            hintText: 'Enter User Repeat Password',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xFF243B6A),
            ),
            labelText: 'Repeat Password',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Colors.black54,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter correct Repeat Password';
            } else if (value != "123") {
              return 'enter valid correct Repeat Password';
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
                            child: Text('REGISTER'),
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
                                if (Name.text == "riddhi" &&
                                    Password.text == "123") {
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
                              }
                            }
                        ),
                      )
                    ],
                  ),
      SizedBox(
        height: 20,
      ),
      Text(" ALREADY HAVE ACCOUNT ? ",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 354,
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
                 ])))));
  }
}
