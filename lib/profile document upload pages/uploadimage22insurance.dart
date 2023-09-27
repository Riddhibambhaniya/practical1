import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:practical1/profile%20document%20upload%20pages/uploaddocumentsinsurance.dart';

class uploaddocuments2insurance extends StatefulWidget {
  const  uploaddocuments2insurance ({Key? key}) : super(key: key);

  @override
  State< uploaddocuments2insurance > createState() => _uploaddocuments2insuranceState();
}

class _uploaddocuments2insuranceState extends State< uploaddocuments2insurance > {
  final _formKey = GlobalKey<FormState>();
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
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "Upload Documents",
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
            onPressed: () => {Navigator.pop(context)}),
      ),
      body: SafeArea(
      child:SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    color: Colors.cyanAccent,
                    height: 300,
                    width: 500,
                    child: Image.asset(
                      'assets/inter9 app/Rectangle 961.jpg',
                      // height: 310,
                      // width: 470,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10, bottom: 5),
                          height: 80,
                          width: 360,
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
                              hintText: 'Enter Title Name',
                              hintStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF243B6A),
                              ),
                              labelText: 'Title',
                              labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter correct Your name';
                              } else if (value != "Insurance") {
                                return 'enter valid correct name';
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
                        width: 360,
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
                                    icon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 384,
                            height: 90,
                            padding:
                            EdgeInsets.only(left: 20, right: 20, top: 30),
                            child: ElevatedButton(
                              child: Text('UPDATE Now'),
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
                                  if (Name.text == "Insurance") {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UploadDocumentsinsurance (

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
                      Row(
                        children: [
                          Container(
                            width: 384,
                            height: 90,
                            padding:
                            EdgeInsets.only(left: 20, right: 20, top: 30),
                            child: ElevatedButton(
                              child: Text('Cancel'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black38,
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

                                Navigator.pushReplacement(
                                  context,MaterialPageRoute(builder: (context) =>  UploadDocumentsinsurance   ()),);
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ))),)
    );
  }
}
