import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class addevent extends StatefulWidget {
  const   addevent  ({Key? key}) : super(key: key);

  @override
  State< addevent> createState() => _addeventState();
}

class _addeventState extends State<  addevent  > {
  DateTime? _selectedDate;
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat('MMM dd, yyyy').format(pickedDate);
      });
    }
  }


  String selectedOption1 = 'Trainning'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions1 = [
    'Trainning',
    'Employes',
    'Others'
  ];
  int _selectedValue = 0;
  void _handleRadioValueChange(value) {
    setState(() {
      _selectedValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 90),
            child: Text("Add Event",
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
      body:SingleChildScrollView(
        child:SafeArea(
          child: Column(
            children: [
              SizedBox(height: 010,),
              Container(
                  height: 65,width: 360,margin: EdgeInsets.all(10),
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
                        padding: const EdgeInsets.only(right:205.0,top:10),
                        child: Text(
                            'Schedule Type',
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
                  height: 65,width: 360,margin: EdgeInsets.all(10),
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
                            'Event Name',
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
              SizedBox(
                height: 05,
              ),
              Padding(
                padding: const EdgeInsets.only(right:260.0),
                child: Text(
                    'Event Days',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: _selectedValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: Color(0xFF243B6A),
                    ),
                    Text('Single Day',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                          color: Colors.black,
                        )),
                    Radio(
                      value: 2,
                      groupValue: _selectedValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: Color(0xFF243B6A),
                    ),
                    Text('Multiple Days',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                margin: EdgeInsets.only(
                  left: 6,
                  top: 00,
                ),
                height: 80,
                width: 380,
                padding:
                EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: false,
                        onTap: () => _selectDate(context),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black38, width: 0.0),
                          ),
                          labelText: 'Date of Training',
                          labelStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                margin: EdgeInsets.only(
                  left: 6,
                  top: 00,
                ),
                height: 80,
                width: 380,
                padding:
                EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _dateController,
                        readOnly: false,
                        onTap: () => _selectDate(context),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.grey, width: 5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black38, width: 0.0),
                          ),
                          labelText: 'Date of Training',
                          labelStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black54,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 65,width: 360,margin: EdgeInsets.all(08),
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
                        padding: const EdgeInsets.only(right:240.0,top:10),
                        child: Text(
                            'Location',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey,
                            )
                        ),
                      ),
                      SizedBox(height: 05),
                      Padding(
                        padding: const EdgeInsets.only(right:250.0),
                        child: Text(
                            'London',
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
              Container(
                  height: 65,width: 360,margin: EdgeInsets.all(10),
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
                        padding: const EdgeInsets.only(right:270.0,top:10),
                        child: Text(
                            'Note',
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
                width: 360,
                height: 90,
                padding: EdgeInsets.only(
                    left: 00, right: 00, top: 30),
                child: ElevatedButton(
                  child: Text('ADD EVENT'),
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
              )
            ],
          ),

        )
      )



    );
  }
}