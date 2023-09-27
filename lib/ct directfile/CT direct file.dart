import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CTdirectfile extends StatefulWidget {
  const  CTdirectfile ({Key? key}) : super(key: key);

  @override
  State<CTdirectfile > createState() => _CTdirectfileState();
}

class _CTdirectfileState extends State< CTdirectfile > {
  bool _isChecked = false;
  TextEditingController Name = TextEditingController();
  DateTime? _selectedDate;
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (
    pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat('MMM dd, yyyy').format(pickedDate);
      }
      );
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("Filter By CT",
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
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(// color: Colors.red,
                  margin: EdgeInsets.only(
                    left: 6, top: 05, ),
                  height: 75,
                  width: 380,
                  padding: EdgeInsets.only(
                      left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _dateController,
                          readOnly: false,
                          onTap: () => _selectDate(context),
                          decoration: InputDecoration(focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0),
                          ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 0.0),),
                            labelText: 'Date of Birth',
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
                      )  ],
                  ),
                ),
                SizedBox(height: 020,),
                Container(
                    height: 125,width: 360,
                    decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                ),
child: Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(right:280.0,top:10),
      child: Text("Type",
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.grey,
        ),),
    ),
    Container(width: 340,
      child: Row(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),


          Text(
            'Continuation',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              )
          ),
]),
          Padding(
            padding: const EdgeInsets.only(left:58.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;

                      });
                    },
                  ),


                  Text(
                    'Initial',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      )
                  ),
                ]),
          ),


        ],
      ),
    ),
    Container(width: 340,height: 20,
      child: Row(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),


                Text(
                  'Contingency',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    )
                ),
              ]),
          Padding(
            padding: const EdgeInsets.only(left:60.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;

                      });
                    },
                  ),


                  Text(
                    'Refresher',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      )
                  ),
                ]),
          ),


        ],
      ),
    ),
  ],
),
                ),
                SizedBox(height: 15,),
                Container( height: 60,width: 360,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:17.0,top:07),
                            child: Text(
                                'Conditions',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey,
                                )
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:00),
                            child: Text(
                                'Indoors',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black,
                                )
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => {},iconSize:30,
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container( height: 60,width: 360,
                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:02.0,top:07),
                            child: Text(
                                'Venue',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey,
                                )
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:00,left:20),
                            child: Text(
                                'Building',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black,
                                )
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => {},iconSize:30,
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 210,),

                Container(width: 370,height: 80,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Container(
                        height: 55,width: 160,
                        child: ElevatedButton(
                          child: Text('RESET'),
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
                      ),
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child:
                      Container(
                        height: 55,width: 160,

                        child: ElevatedButton(
                          child: Text('SUBMIT'),
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
