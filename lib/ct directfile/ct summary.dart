import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CTsummary1 extends StatefulWidget {
  const CTsummary1  ({Key? key}) : super(key: key);

  @override
  State< CTsummary1  > createState() => _CTsummary1State();
}

class _CTsummary1State extends State<CTsummary1> {
  String userDescription = "";

  void updateUserDescription(String description) {
    setState(() {
      userDescription = description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text("CT Summary",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {
              Navigator.pushNamed(context, '/dashboard')
            }),
      ),
      body:SingleChildScrollView(
        child:SafeArea(
          child:Column(
            children: [
            SizedBox(height: 10,),
          Container(height:190,width:390,padding: EdgeInsets.only(left:10,right:10),
              child: Card(
                child:Column(
              children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top:05),
                  child: Text("Security",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text("10/07/2021",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                ),
              ]
          ),
                SizedBox(height: 010,),
                Padding(
                  padding: const EdgeInsets.only(right:140.0),
                  child: Text("ABC Private Limited",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(height: 05,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,top:05),
                        child: Text("Bess",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("Wayne",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),),
                      ),
                    ]
                ),
                SizedBox(height: 05,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,top:05),
                        child: Text("Indoors",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("Building",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),),
                      ),
                    ]
                ),
                SizedBox(height: 05,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,top:05),
                        child: Text("Continuation,Initial",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("2",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),),
                      ),
                    ]
                ),
              ],
          )
              )
          ),
          SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right:188.0),
                child: Text("Trainer Comment",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),),
              ),
              SizedBox(height: 08,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                child: TextField(
                  onChanged: (value) => updateUserDescription(value),
                  maxLines: 3, // Set the maximum number of lines for the TextField
                  decoration: InputDecoration(
                    hintText: ' description here...',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0), // Set the internal vertical padding
                  ),
                ),
              ),
               // SizedBox(height: 20),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right:160.0),
                child: Text("Future Development",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                child: TextField(
                  onChanged: (value) => updateUserDescription(value),
                  maxLines: 3, // Set the maximum number of lines for the TextField
                  decoration: InputDecoration(
                    hintText: ' description here...',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0), // Set the internal vertical padding
                  ),
                ),
              ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    userDescription.isEmpty ? '' : userDescription,
                    style: TextStyle(fontSize: 16),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only (bottom: 50.0),
                child: Row(
                  children: [
                    Container(
                      width: 383,
                      height: 70,
                      padding: EdgeInsets.only(left: 15, right: 15,top:15),
                      child: ElevatedButton(
                        child: Text('SAVE'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  Color(0xff243b6a),
                          // side: BorderSide(color: Colors.yellow, width: 5),
                          textStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                            //color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(04)),
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
          ),
      )
    );

  }
}