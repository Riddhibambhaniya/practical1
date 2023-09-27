import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'main dog profile.dart';

class adddogprofile extends StatefulWidget {
  @override
  State<adddogprofile> createState() => _adddogprofileState();
}

class _adddogprofileState extends State<adddogprofile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController Name = TextEditingController();
  TextEditingController Number = TextEditingController();
  TextEditingController Password = TextEditingController();

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
              padding: const EdgeInsets.only(right: 90),
              child: Text(
                "Add Dog Profile",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => {
                Navigator.pop(context),
              }),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset(
                'assets/inter9 app/Mask Group (3).jpg',
                //height: 200,
                //width: 200,
                fit: BoxFit.fill,
              ),
            ),

           Row(children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10, bottom: 5),
                          height: 80,
                          width: 355,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            controller: Name,
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 0.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black38, width: 0.0),
                              ),
                              hintText: '',
                              hintStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF243B6A),
                              ),
                              labelText: 'Dog Name',
                              labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter correct Your name';
                              } else if (value != "dogname") {
                                return 'enter valid correct name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                      Row(children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 15, top: 00, bottom: 00),
                          height: 80,
                          width: 355,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            controller: Number,
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 0.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black38, width: 0.0),
                              ),
                              hintText: '',
                              hintStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF243B6A),
                              ),
                              labelText: 'Microchip Number',
                              labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter correct Microchip Number';
                              } else if (value != "123") {
                                return 'enter valid Microchip Number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                      Row(children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 15, top: 00, bottom: 00),
                          height: 80,
                          width: 355,
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: TextFormField(
                            controller: Password,
                            decoration: new InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurple, width: 0.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black38, width: 0.0),
                              ),
                              hintText: '',
                              hintStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF243B6A),
                              ),
                              labelText: 'Medication',
                              labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter correct Medication';
                              } else if (value != "123") {
                                return 'enter valid Medication';
                              }
                              return null;
                            },
                          ),
                        ),
                      ]),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          left: 6,
                          top: 05,
                        ),
                        height: 80,
                        width: 355,
                        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _dateController,
                                readOnly: false,
                                onTap: () => _selectDate(context),
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepPurple, width: 0.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black38, width: 0.0),
                                  ),
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
                            )
                          ],
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only (bottom: 50.0,left:10),
                      child: Row(
                        children: [
                          Container(
                            width: 370,
                            height: 70,
                            padding: EdgeInsets.only(left: 15, right: 15,top:15),
                            child: ElevatedButton(
                              child: Text('ADD DOG PROFILE'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff243b6a),
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
                                if (_formKey.currentState!.validate()) {
                                  if (Name.text == "dogname") {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => maindogprofile(
                                                name: Name.text,
                                              )),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Invalid Credentials')),
                                    );
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please fill input')),
                                  );
                                }
                              },
                            ),
                          )
                        ],
                      ),
                )
                    ],
                  )

        ))));
  }
}
