import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'OP Upload pages.dart';
import 'opsumarry edd.dart';
import 'dart:async';

import 'opsumarry security.dart';
class opreport extends StatefulWidget {
  const opreport({Key? key}) : super(key: key);

  @override
  State<opreport> createState() => _opreportState();
}

class _opreportState extends State<opreport> {
  void _navigateToSecondPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>ImageGridView()),
    );
  }




  bool _isChecked = false;

  double _seconds = 0.0;
  Timer? _timer;
  bool _isRunning = false;
  Color _timerColor = Colors.blue;

  void _startTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _seconds = 0.0;

    }

    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _seconds += 0.1;
      });
    });
    setState(() {
      _isRunning = true;
      _timerColor = Colors.red;
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
      _seconds = 0.0;
      _timerColor = Colors.blue;
    });
  }

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  String userDescription = "";
  void updateUserDescription(String description) {
    setState(() {
      userDescription = description;
    });
  }

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

  TextEditingController Name = TextEditingController();

  String selectedOption = 'EDD'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions = [
    'EDD',
    'Drugs',
    'Tobacco',
    'Security',
    'Others'
  ];
  String selectedOption1 = 'Building'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions1 = [
    'Building',
    'Drugs',
    'Tobacco',
    'Security',
    'Others'
  ];
  String selectedOption2 = 'Night'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions2 = [
    'Night',
    'Drugs',
    'Tobacco',
    'Security',
    'Others'
  ];
  String selectedOption3 = 'Cold'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions3 = [
    'Cold',
    'Drugs',
    'Tobacco',
    'Security',
    'Others'
  ];

  Widget _getWidgetForSelectedOption() {
    if (selectedOption == 'EDD') {
      return Container(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 250.0, top: 10),
                      child: Text('Post Code',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 265.0, top: 05),
                      child: Text('HUI 5TZ',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          )),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              // color: Colors.red,

              height: 70,
              width: 370,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _dateController,
                      readOnly: false,
                      onTap: () => _selectDate(context),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 0.0),
                        ),
                        labelText: 'Date',
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
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 270.0, top: 10),
                      child: Text('Venue',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 05),
                    Container(
                      height: 25,
                      width: 330,
                      padding: EdgeInsets.only(left: 05, right: 05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
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
                              items: dropdownOptions1
                                  .map<DropdownMenuItem<String>>(
                                      (String option) {
                                // Creating dropdown items from the list of options
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                            ),
                          ]),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 285.0, top: 10),
                      child: Text('Dog',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 278.0, top: 05),
                      child: Text('Bess',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          )),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container( height: 56,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(width: 290,height: 52,
                    color: _seconds == 0.0 ? Color(0xFF243B6A): _timerColor,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _seconds.toStringAsFixed(1) + ' seconds',
                      style: TextStyle(
                        fontSize: 24,
                        color: _seconds == 0.0 ? Colors.white: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(color: Color(0xFF243B6A),
                    child: IconButton(
                      icon: Icon(_isRunning ? Icons.stop : Icons.play_arrow),iconSize: 36,
                      onPressed: _isRunning ? _stopTimer : _startTimer,
                    ),
                  ),
                  //SizedBox(height: 20),

                ],

              ),
            ),
            SizedBox(
              height: 10,
            ),
    GestureDetector(
    onTap: _navigateToSecondPage,
    child: Container(
              margin: EdgeInsets.all(0),
              height: 75,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 88.0),
                    child: Text(
                      "Upload Images",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF243B6A),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.cloud_upload,
                      color: Color(0xFF243B6A),
                    ),
                  ),
                ],
              ),
            ),),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 10),
                          child: Text('Harness Time',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 05),
                          child: Text('06:35',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190.0),
                      child: Icon(
                        Icons.watch_later_sharp,
                        color: Color(0xFF243B6A),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Positive Indication",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16),
                    child: TextField(
                      onChanged: (value) => updateUserDescription(value),
                      maxLines:
                      3, // Set the maximum number of lines for the TextField
                      decoration: InputDecoration(
                        hintText: 'Description',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(),
                        // Set the internal vertical padding
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Text(
                      userDescription.isEmpty ? '' : userDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Area of Interest",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16),
                      child: TextField(
                        onChanged: (value) => updateUserDescription(value),
                        maxLines:
                            3, // Set the maximum number of lines for the TextField
                        decoration: InputDecoration(
                          hintText: 'Description',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          border: OutlineInputBorder(),
                          // Set the internal vertical padding
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: Text(
                        userDescription.isEmpty ? '' : userDescription,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Indication",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16),
                    child: TextField(
                      onChanged: (value) => updateUserDescription(value),
                      maxLines:
                          3, // Set the maximum number of lines for the TextField
                      decoration: InputDecoration(
                        hintText: 'Description',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(),
                        // Set the internal vertical padding
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Text(
                      userDescription.isEmpty ? '' : userDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only (bottom: 50.0),
              child: Row(
                children: [
                  Container(
                    width: 380,
                    height: 70,
                    padding: EdgeInsets.only(left: 15, right: 15,top:15),
                    child: ElevatedButton(
                      child: Text('NEXT'),
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
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => opsummaryedd ()),);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    if (selectedOption == 'Security') {
      return Container(
        child: Column(
          children: [

            Container(width: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:18.0),
                    child: Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text('Building',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text('Area',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text('Perimeter',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),




                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:18.0),
                    child: Container(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text('Eviction',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                          Text('other',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),



                        ],
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
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 250.0, top: 10),
                      child: Text('Post Code',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 265.0, top: 05),
                      child: Text('HUI 5TZ',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          )),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              // color: Colors.red,

              height: 70,
              width: 370,
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _dateController,
                      readOnly: false,
                      onTap: () => _selectDate(context),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black38, width: 0.0),
                        ),
                        labelText: 'Date',
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
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 270.0, top: 10),
                      child: Text('Venue',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 05),
                    Container(
                      height: 25,
                      width: 330,
                      padding: EdgeInsets.only(left: 05, right: 05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
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
                              items: dropdownOptions1
                                  .map<DropdownMenuItem<String>>(
                                      (String option) {
                                    // Creating dropdown items from the list of options
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(option),
                                    );
                                  }).toList(),
                            ),
                          ]),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 285.0, top: 10),
                      child: Text('Dog',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 278.0, top: 05),
                      child: Text('Bess',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black,
                          )),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container( height: 56,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(width: 290,height: 52,
                    color: _seconds == 0.0 ? Color(0xFF243B6A): _timerColor,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      _seconds.toStringAsFixed(1) + ' seconds',
                      style: TextStyle(
                        fontSize: 24,
                        color: _seconds == 0.0 ? Colors.white: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(color: Color(0xFF243B6A),
                    child: IconButton(
                      icon: Icon(_isRunning ? Icons.stop : Icons.play_arrow),iconSize: 36,
                      onPressed: _isRunning ? _stopTimer : _startTimer,
                    ),
                  ),
                  //SizedBox(height: 20),

                ],

              ),
            ),
            SizedBox(
              height: 10,
            ),
        GestureDetector(
          onTap: _navigateToSecondPage,

            child: Container(
              margin: EdgeInsets.all(0),
              height: 75,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 88.0),
                    child: Text(
                      "Upload Images",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF243B6A),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.cloud_upload,
                      color: Color(0xFF243B6A),
                    ),
                  ),
                ],
              ),
            ),),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.all(0),
                height: 65,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 10),
                          child: Text('Harness Time',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 05),
                          child: Text('06:35',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190.0),
                      child: Icon(
                        Icons.watch_later_sharp,
                        color: Color(0xFF243B6A),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Positive Indication",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16),
                    child: TextField(
                      onChanged: (value) => updateUserDescription(value),
                      maxLines:
                      3, // Set the maximum number of lines for the TextField
                      decoration: InputDecoration(
                        hintText: 'Description',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(),
                        // Set the internal vertical padding
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Text(
                      userDescription.isEmpty ? '' : userDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Area of Interest",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16),
                      child: TextField(
                        onChanged: (value) => updateUserDescription(value),
                        maxLines:
                        3, // Set the maximum number of lines for the TextField
                        decoration: InputDecoration(
                          hintText: 'Description',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          border: OutlineInputBorder(),
                          // Set the internal vertical padding
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0),
                      child: Text(
                        userDescription.isEmpty ? '' : userDescription,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Indication",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xFF243B6A),
                    activeTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Color(0xFF243B6A),
                  )
                ],
              ),
            ),
            Container(
                height: 97,
                width: 390,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 16),
                    child: TextField(
                      onChanged: (value) => updateUserDescription(value),
                      maxLines:
                      3, // Set the maximum number of lines for the TextField
                      decoration: InputDecoration(
                        hintText: 'Description',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(),
                        // Set the internal vertical padding
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Text(
                      userDescription.isEmpty ? '' : userDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ])),
            SizedBox(height: 05,),
            Container(
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 250.0, top: 10),
                      child: Text('Condition',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 05),
                    Container(
                      height: 25,
                      width: 330,
                      padding: EdgeInsets.only(left: 05, right: 05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
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
                              items: dropdownOptions2
                                  .map<DropdownMenuItem<String>>(
                                      (String option) {
                                    // Creating dropdown items from the list of options
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(option),
                                    );
                                  }).toList(),
                            ),
                          ]),
                    )
                  ],
                )),
            SizedBox(height: 05,),
            Container(
                height: 65,
                width: 350,
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
                      padding: const EdgeInsets.only(right: 190.0, top: 10),
                      child: Text('Condition Option',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 05),
                    Container(
                      height: 25,
                      width: 330,
                      padding: EdgeInsets.only(left: 10, right: 05),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                selectedOption3,
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            SizedBox(height: 20),
                            DropdownButton<String>(
                              // The value of the currently selected option
                              onChanged: (newValue) {
                                // Function to update the selected option
                                setState(() {
                                  selectedOption3= newValue!;
                                });
                              },
                              items: dropdownOptions3
                                  .map<DropdownMenuItem<String>>(
                                      (String option) {
                                    // Creating dropdown items from the list of options
                                    return DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(option),
                                    );
                                  }).toList(),
                            ),
                          ]),
                    )
                  ],
                )),
            SizedBox(height: 05,),

            Padding(
              padding: const EdgeInsets.only (bottom: 50.0),
              child: Row(
                children: [
                  Container(
                    width: 370,
                    height: 60,
                    padding: EdgeInsets.only(left: 15, right: 15,top:15),
                    child: ElevatedButton(
                      child: Text('NEXT'),
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
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => opsummarysecurity ()),);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    else {
      return Row();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                "OP Report",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => {Navigator.pop(context),}),
        ),
        body:  SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  height: 65,
                  width: 350,
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
                        padding: const EdgeInsets.only(right: 230.0, top: 10),
                        child: Text('Classification',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey,
                            )),
                      ),
                      SizedBox(height: 05),
                      Container(
                        height: 25,
                        width: 340,
                        padding: EdgeInsets.only(left: 05, right: 05),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  selectedOption,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              SizedBox(height: 20),
                              DropdownButton<String>(
                                // The value of the currently selected option
                                onChanged: (newValue) {
                                  // Function to update the selected option
                                  setState(() {
                                    selectedOption = newValue!;
                                  });
                                },
                                items: dropdownOptions
                                    .map<DropdownMenuItem<String>>(
                                        (String option) {
                                  // Creating dropdown items from the list of options
                                  return DropdownMenuItem<String>(
                                    value: option,
                                    child: Text(option),
                                  );
                                }).toList(),
                              ),
                            ]),
                      )
                    ],
                  )),
              _getWidgetForSelectedOption(),
            ],
          ),
        )));
  }
}
