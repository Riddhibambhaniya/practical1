import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../profile document upload pages/uploaddocumentsCV.dart';
import '../profile document upload pages/uploaddocumentsinsurance.dart';
import 'editprofile.dart';

class userprofile1 extends StatefulWidget {
  const userprofile1({Key? key, required }) : super(key: key);

  @override
  State<userprofile1> createState() => _userprofile1State();
}

class _userprofile1State extends State<userprofile1> {
  TextEditingController Name = TextEditingController();

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Text(" My Profile",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color: Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {Navigator.pop(context)}),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.share),
              tooltip: 'settings',
              onPressed: () {_showShareProfileDialog(context);},
            ), //IconButton
          ]
      ),
      body:
           Stack(
         // alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(padding: EdgeInsets.only(left:00),
                  height: 200.0,
                  //color: Colors.orange,
                  child: Image.asset(
                    'assets/inter9 app/user profile pic 1.jpg',
                    // height: 100,
                    // width: 300,
                    fit: BoxFit.fill,
                  ),
                ),

                  Container(width:500,
                   child:Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(top:60,left:10),
                         child: Row(
                           children: [
                             Text("Handler Name",
                               style: GoogleFonts.roboto(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 22,
                                 color:Colors.black,
                               ),),
                             Padding(
                               padding: const EdgeInsets.only(left:170.0),
                               child: IconButton(
                                 icon: const Icon(Icons.edit_calendar_outlined,color: Colors.yellow,),
                                 //tooltip: 'settings',
                                 onPressed: () {
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) =>  editprofile()));
                                 },
                               ),
                             ), //IconBut

                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top:5,left:10),
                         child: Row(
                           children: [
                             Text("CV",
                               style: GoogleFonts.roboto(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 18,
                                 color:Colors.black,
                               ),),
                             Padding(
                               padding: const EdgeInsets.only(left:240.0),
                               child: Checkbox(
                                 value: _isChecked,
                                 onChanged: (bool? value) {
                                   setState(() {
                                     _isChecked = value!;
                                   });
                                 },
                                 shape: CircleBorder(),
                                 checkColor: Colors.white,
                                 fillColor: MaterialStateProperty.resolveWith((states) {
                                   if (states.contains(MaterialState.selected)) {
                                     return Colors.green; // Color when checkbox is selected
                                   }
                                   return Colors.lightGreen; // Color when checkbox is unselected
                                 }),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left:0.0),
                               child: IconButton(
                                 icon: const Icon(Icons.edit_calendar_outlined,color: Colors.yellow,),
                                 //tooltip: 'settings',
                                 onPressed: () {
                                   Navigator.push(
                                     context,MaterialPageRoute(builder: (context) =>UploadDocumentsCV()),);
                                 },
                               ),
                             ), //IconBut

                           ],
                         ),
                       ),
                       Container(width: 450,
                         height: 75,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.zero,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.blueAccent.withOpacity(0.5),
                               spreadRadius: 1,
                               blurRadius: 5,
                               offset: Offset(0, 3),
                             ),
                           ],
                         ),
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Container(width: 380,
                                   child: Row(
                                     children: [


                                             Padding(
                                               padding: const EdgeInsets.only(left:10.0),
                                               child: Text("Insurance",
                                               style: GoogleFonts.roboto(
                                                 fontWeight: FontWeight.w500,
                                                 fontSize: 18,
                                                 color:Colors.black,
                                               ),),
                                             ),




                                             Padding(
                                               padding: const EdgeInsets.only(left:183.0),
                                               child: Checkbox(
                                               value: _isChecked,
                                               onChanged: (bool? value) {
                                                 setState(() {
                                                   _isChecked = value!;
                                                 });
                                               },
                                               shape: CircleBorder(),
                                               checkColor: Colors.white,
                                               fillColor: MaterialStateProperty.resolveWith((states) {
                                                 if (states.contains(MaterialState.selected)) {
                                                   return Colors.green; // Color when checkbox is selected
                                                 }
                                                 return Colors.lightGreen; // Color when checkbox is unselected
                                               }),
                                         ),
                                             ),



    IconButton(
                                             icon: const Icon(Icons.edit_calendar_outlined,color: Colors.yellow,),
                                             //tooltip: 'settings',
                                             onPressed: () {
                                               Navigator.push(
                                                 context,MaterialPageRoute(builder: (context) =>UploadDocumentsinsurance  ()),);
                                             },
                                         ),
    ])),



                                 Container(width:370,padding: EdgeInsets.only(top:3),
                                   child: Row(
                                     children: [

                                       Padding(
                                         padding: const EdgeInsets.only(left:5.0),
                                         child: Text("Expiry Date",
                                             style: GoogleFonts.roboto(
                                               fontWeight: FontWeight.w400,
                                               fontSize: 16,
                                               color:Colors.black,
                                             ),),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(left:150.0,top:03),
                                         child: Text("23/10/2021",
                                           style: GoogleFonts.roboto(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 16,
                                             color:Colors.black,
                                           ),),
                                       ),

                                     ],
                                   ),
                                 )
                               ],
                             )
                           ],
                         ),
                       ),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left:15.0,top:10),
                         child: Text("Qualification",
                         style: GoogleFonts.roboto(
                           fontWeight: FontWeight.w500,
                           fontSize: 18,
                           color:Colors.black,
                         ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:220.0,top:10),
                         child: Container(
                           height: 25,width: 45,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color:Color(0xFF243B6A),
                           ),
                           // color:Color(0xFF243B6A),

                             child: IconButton(
                               icon: const Icon(Icons.add,color: Colors.white,size:14),
                               //tooltip: 'settings',
                               onPressed: () {},
                             ),
                           ), //IconButt
                         ),
                     ],
                   ),
                       SizedBox(height: 10,),
                       Container(width: 360,
                         height: 70,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.zero,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.blueAccent.withOpacity(0.5),
                               spreadRadius: 1,
                               blurRadius: 5,
                               offset: Offset(0, 3),
                             ),
                           ],
                         ),
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left:10.0,top:10),
                                       child: Text("Master of Science",
                                         style: GoogleFonts.roboto(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 16,
                                           color:Colors.black,
                                         ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left:170.0,top:10),
                                       child: Text("90%",
                                         style: GoogleFonts.roboto(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 16,
                                           color:Colors.black,
                                         ),),
                                     ),
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top:10,right:100),
                                       child: Text("University Name",
                                         style: GoogleFonts.roboto(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 16,
                                           color:Colors.black,
                                         ),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(top:10,left:10),
                                       child: Text("2014 to 2016",
                                         style: GoogleFonts.roboto(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 16,
                                           color:Colors.black,
                                         ),),
                                     ),
                                   ],
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),
                       Container(width: 360,
                         height: 70,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.zero,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.blueAccent.withOpacity(0.5),
                               spreadRadius: 1,
                               blurRadius: 5,
                               offset: Offset(0, 3),
                             ),
                           ],
                         ),
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left:10.0,top:10),
                                       child: Text("Bachelor of Science",
                                           style: GoogleFonts.roboto(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 16,
                                             color:Colors.black,
                                           ),),
                                     ),

                                     Padding(
                                       padding: const EdgeInsets.only(top:10.0,left:160),
                                       child: Text("80%",
                                           style: GoogleFonts.roboto(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 16,
                                             color:Colors.black,
                                           ),),
                                     ),

                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(right:110.0,top:10),
                                       child: Text("University Name",
                                           style: GoogleFonts.roboto(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 16,
                                             color:Colors.black,
                                           ),),
                                     ),

                                        Padding(
                                          padding: const EdgeInsets.only(top:10.0),
                                          child: Text("2012 to 2014",
                                           style: GoogleFonts.roboto(
                                             fontWeight: FontWeight.w400,
                                             fontSize: 16,
                                             color:Colors.black,
                                           ),),
                                        ),

                                   ],
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),




                     ],
                   )

                )
              ],
            ),
            // Profile image
            Positioned(
              top: 100.0,
              // (background container size) - (circle height / 2)
              left:00,
              child: Container(padding: EdgeInsets.only(left:10),
                height: 150.0,
                width: 140.0,

                child: Image.asset(
                  'assets/inter9 app/profile pic.jpg',
                   height: 150,
                   width: 300,
                  //fit: BoxFit.fill,

              ),
            )),
            Positioned(
                top: 180.0,
                // (background container size) - (circle height / 2)
                left:110,
                child: Container(//padding: EdgeInsets.only(left:10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:Color(0xFF243B6A),
                  ),
                 // color:Color(0xFF243B6A),
                  child: IconButton(
                    icon: const Icon(Icons.edit,color: Colors.white,),
                    //tooltip: 'settings',
                    onPressed: () {


                    },
                  ), //IconButt
                ))
          ],
        ),


    );
  }
}

void _showShareProfileDialog(BuildContext context) {
  TextEditingController Email = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Share Profile'),
        content:  Row(
            children: [
              Container(height: 56,width: 240,
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
                    hintStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFF243B6A),
                    ),
                    labelText:'Email',
                    labelStyle:GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter correct email.address';
                    } else if (value != "") {
                      return 'enter valid email address';
                    }
                    return null;
                  },
                ),
              ),

            ]
        ),
        actions: <Widget>[
          Row(
            children: [
              Container(
                width: 272,
                height: 65,
                padding: EdgeInsets.only(left: 15, right: 15,),
                child: ElevatedButton(
                  child: Text('SHARE PROFILE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xff243b6a),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
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
        ],
      );
    },
  );
}
