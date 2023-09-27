import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class addsubstancepages extends StatefulWidget {
  const  addsubstancepages  ({Key? key}) : super(key: key);

  @override
  State<addsubstancepages > createState() => _addsubstancepagesState();
}

class _addsubstancepagesState extends State< addsubstancepages  > {



  String selectedOption1 = 'Heroin'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions1 = [
    'Heroin',
    'Drugs',
    'Tobacco',
    'Security',
    'Pyro'
        'Others'
  ];

  String selectedOption2 = 'Real'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions2= [
    'Real',
    'Drugs',
    'Tobacco',
    'Security',
    'Pyro'
        'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("Add Substance",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.white,
                ),),
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => {Navigator.pop(context),}),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    children: [
                      SizedBox(height: 010,),


                      Container(
                          height: 65,width: 380,margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:195.0,top:10),
                                child: Text(
                                    'Substance Used',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )
                                ),
                              ),
                              SizedBox(height: 05),
                              Container(height:25 ,width:340 ,padding: EdgeInsets.only(left:05,right:05),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Text(
                                          selectedOption1,
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      DropdownButton<String>(
                                        // The value of the currently selected option
                                        onChanged: (newValue) {
                                          // Function to update the selected option
                                          setState(() {
                                            selectedOption1 = newValue!;

                                          });
                                        },
                                        items: dropdownOptions1.map<DropdownMenuItem<String>>((String option) {
                                          // Creating dropdown items from the list of options
                                          return DropdownMenuItem<String>(
                                            value: option, child: Text(option),
                                          );
                                        }).toList(),
                                      ),

                                    ] ),
                              )
                            ],
                          )
                      ),

                      Container(
                          height: 65,width: 380,margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:255.0,top:10),
                                child: Text(
                                    'Quantity',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )
                                ),
                              ),


                            ],
                          )
                      ),

                      Container(
                          height: 65,width: 380,margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:220.0,top:10),
                                child: Text(
                                    'Pseudo/Real',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )
                                ),
                              ),
                              SizedBox(height: 05),
                              Container(height:25 ,width:340 ,padding: EdgeInsets.only(left:05,right:05),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:3.0),
                                        child: Text(
                                          selectedOption2,
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      DropdownButton<String>(
                                        // The value of the currently selected option
                                        onChanged: (newValue) {
                                          // Function to update the selected option
                                          setState(() {
                                            selectedOption2 = newValue!;

                                          });
                                        },
                                        items: dropdownOptions2.map<DropdownMenuItem<String>>((String option) {
                                          // Creating dropdown items from the list of options
                                          return DropdownMenuItem<String>(
                                            value: option, child: Text(option),
                                          );
                                        }).toList(),
                                      ),

                                    ] ),
                              )
                            ],
                          )
                      ),

                      Container(
                          height: 65,width: 380,margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child:Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:25.0,top:8),
                                    child: Text(
                                        'Location of Hide',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.grey,
                                        )
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(left:170.0,top:20),
                                     child: Icon(Icons.access_time_rounded),
                                   ),
                                ],
                              ),


                            ],
                          )
                      ),

                      Container(
                          height: 65,width: 380,margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:230.0,top:10),
                                child: Text(
                                    'SOAK Time',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )
                                ),
                              ),
                              SizedBox(height: 03),
                              Padding(
                                padding: const EdgeInsets.only(right:265.0,top:00),
                                child: Text(
                                    '30 min',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    )
                                ),
                              ),
                            ],
                          )
                      ),
                     // SizedBox(height: 20,),

                      Container(width: 370,height: 80,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
height: 55,width: 160,
                                child: ElevatedButton(
                                  child: Text('CANCEL'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF243B6A),
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
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:10.0),
                              child: Container(

                                height: 55,width: 160,
                                child: ElevatedButton(
                                  child: Text('SAVE'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF243B6A),
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
                              ),
                            )


                          ],
                        ),
                      ),


                    ]
                )
            )
        )
    );
  }
}