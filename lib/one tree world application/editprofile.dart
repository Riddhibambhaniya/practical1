import 'package:flutter/material.dart';

import 'dashbord11.dart';
class Editprofile11 extends StatefulWidget {
  @override
  State< Editprofile11> createState() => _Editprofile11State();
}

class _Editprofile11State extends State< Editprofile11> {
  TextEditingController Name = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController Email = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF79A206),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text("Edit Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white,
                ),),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: IconButton(
                icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white,size: 40,),
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
    padding: const EdgeInsets.only(right:270.0),
    child: Text(
        "First Name",
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
    padding: const EdgeInsets.only(right:270.0),
    child: Text(
        "Last Name",
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
      controller: LastName,
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
        hintText: 'Enter Last Name',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Color(0xFF243B6A),
        ),
        labelText: 'Last Name',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 17,
          color: Colors.black54,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter correct Last Name';
        } else if (value != "bambhaniya") {
          return 'enter valid correct Last Name';
        }
        return null;
      },
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(right:240.0),
    child: Text(
        "Email Address",
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
      controller: Email,
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
SizedBox(height: 250,),
  Row(
    children: [
      Container(
        //color: Colors.cyan,
        width: 384,
        height: 90,
        padding: EdgeInsets.only(
            left: 00, right: 00, top: 30),
        child: ElevatedButton(
            child: Text('SAVE   CHANGES'),
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
                if (Name.text == "riddhi"
                ) {
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

],
              ),
            )
        ))
    );
  }
}
