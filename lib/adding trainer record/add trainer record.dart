import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:practical1/adding%20trainer%20record/select%20handler.dart';

import 'add substance page 1.dart';

class addtrainerrecord extends StatefulWidget {
  const addtrainerrecord({Key? key}) : super(key: key);

  @override
  State<addtrainerrecord> createState() => _addtrainerrecordState();
}

class _addtrainerrecordState extends State<addtrainerrecord> {
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

  int _selectedValue = 0;
  int _firstRadioValue = 0;

  bool _isChecked = false;
  void _handleRadioValueChange(value) {
    setState(() {
      _selectedValue = value;
    });
  }

  void _handleRadioValueChange1(value) {
    setState(() {
      _firstRadioValue = value;
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

  String selectedOption = 'Security'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions = [
    'Security',
    'Drugs',
    'Tobacco',
    'EDD',
    'Pyro',
    'Select classification'
  ];
  String selectedOption1 = 'Indoors'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions1 = [
    'Indoors',
    'Drugs',
    'Tobacco',
    'EDD',
    'Pyro',
  ];
  String selectedOption2 = 'Building'; // Default selected option

  // List of options for the dropdown
  List<String> dropdownOptions2 = [
    'Building',
    'Drugs',
    'Tobacco',
    'EDD',
    'Pyro',
  ];

  String _selectedOption4 = 'Moving';
  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text('1',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Moving',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 88.0),
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text('2',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Standing',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 78.0),
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text('3',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Seated',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 98.0),
                          child: Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _getWidgetForSelectedOption() {
    if (selectedOption == 'EDD') {
      return Container(
        child: Column(
          children: [
            Container(
                height: 80,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(05),
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 195.0, top: 03),
                    child: Text('Movment Type',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Radio(
                              value: 3,
                              groupValue: _firstRadioValue,
                              onChanged: _handleRadioValueChange1,
                              activeColor: Color(0xFF243B6A),
                            ),
                            Text('Passive',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.black,
                                )),
                            Radio(
                              value: 4,
                              groupValue: _firstRadioValue,
                              onChanged: _handleRadioValueChange1,
                              activeColor: Color(0xFF243B6A),
                            ),
                            Text('Active',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ])),
            if (_firstRadioValue == 3)
              Container(
                  child: Column(children: [
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
              ]))
            else if (_firstRadioValue == 4)
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 65,
                        width: 360,
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
                              padding:
                                  const EdgeInsets.only(right: 280.0, top: 10),
                              child: Text('Type',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.grey,
                                  )),
                            ),
                            SizedBox(height: 05),
                            Container(
                              height: 25,
                              width: 340,
                              padding: EdgeInsets.only(left: 08, right: 05),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        _selectedOption4,
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    DropdownButton<String>(
                                      value: _selectedOption4,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _selectedOption4 = newValue!;
                                          _showAlertDialog();
                                        });
                                      },
                                      items: ['Moving', 'Standing', 'Seated']
                                          .map<DropdownMenuItem<String>>(
                                            (String value) =>
                                                DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                    SizedBox(height: 20),
                                  ]),
                            )
                          ],
                        )),
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
                                onChanged: (value) =>
                                    updateUserDescription(value),
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
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 16),
                              child: TextField(
                                onChanged: (value) =>
                                    updateUserDescription(value),
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
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              child: Text(
                                userDescription.isEmpty ? '' : userDescription,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )
          ],
        ),
      );
    } else if (selectedOption == 'Select classification') {
      return Container(
        child: Column(
          children: [
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
          ],
        ),
      );
    } else {
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
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                "Add Trainer Record",
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
              onPressed: () => {Navigator.pop(context),}),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 010,
                ),
                Container(
                    height: 65,
                    width: 360,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(08),
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0, top: 8),
                          child: Text('Dog Name',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.grey,
                              )),
                        ),
                        SizedBox(height: 03),
                        Padding(
                          padding: const EdgeInsets.only(right: 267.0, top: 2),
                          child: Text('Cooper',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: Text('Record Type',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.grey,
                      )),
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
                      Text('Own',
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
                      Text('Handler',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                if (_selectedValue == 1)
                  Container(
                    child: Column(
                      children: [
                        Container(
                            height: 65,
                            width: 360,
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(08),
                              border: Border.all(
                                color: Colors.grey, // Border color
                                width: 1.0, // Border width
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 205.0, top: 8),
                                  child: Text('Handler Name',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      )),
                                ),
                                SizedBox(height: 03),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 245.0, top: 2),
                                  child: Text('Jone Doe',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 65,
                            width: 360,
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(08),
                              border: Border.all(
                                color: Colors.grey, // Border color
                                width: 1.0, // Border width
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 190.0, top: 8),
                                  child: Text('Company Name',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      )),
                                ),
                                SizedBox(height: 03),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 155.0, top: 3),
                                  child: Text('ABC Private Limited',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            )),
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
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 65,
                            width: 360,
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
                                  padding: const EdgeInsets.only(
                                      right: 210.0, top: 10),
                                  child: Text('Classification',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      )),
                                ),
                                SizedBox(height: 05),
                                Container(
                                  height: 25,
                                  width: 340,
                                  padding: EdgeInsets.only(left: 08, right: 05),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.0),
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
                        SizedBox(height: 15),
                        Container(
                          height: 125,
                          width: 360,
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
                                padding: const EdgeInsets.only(
                                    right: 280.0, top: 10),
                                child: Text(
                                  "Type",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                width: 340,
                                child: Row(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: _isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _isChecked = value ?? false;
                                              });
                                            },
                                          ),
                                          Text('Continuation',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.black,
                                              )),
                                        ]),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 58.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Checkbox(
                                              value: _isChecked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  _isChecked = value ?? false;
                                                });
                                              },
                                            ),
                                            Text('Initial',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                )),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 340,
                                height: 20,
                                child: Row(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: _isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _isChecked = value ?? false;
                                              });
                                            },
                                          ),
                                          Text('Contingency',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.black,
                                              )),
                                        ]),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 60.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Checkbox(
                                              value: _isChecked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  _isChecked = value ?? false;
                                                });
                                              },
                                            ),
                                            Text('Refresher',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                )),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                            height: 65,
                            width: 360,
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
                                  padding: const EdgeInsets.only(
                                      right: 220.0, top: 10),
                                  child: Text('Conditions',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      )),
                                ),
                                SizedBox(height: 05),
                                Container(
                                  height: 25,
                                  width: 340,
                                  padding: EdgeInsets.only(left: 15, right: 05),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.0),
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
                        SizedBox(height: 15),
                        Container(
                            height: 65,
                            width: 360,
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
                                  padding: const EdgeInsets.only(
                                      right: 250.0, top: 10),
                                  child: Text('Venue',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      )),
                                ),
                                SizedBox(height: 05),
                                Container(
                                  height: 25,
                                  width: 340,
                                  padding: EdgeInsets.only(left: 15, right: 05),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 3.0),
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

                        SizedBox(height: 15),
                        _getWidgetForSelectedOption(),
                        SizedBox(height: 15),
                        Container(
                            height: 97,
                            width: 390,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 16),
                                  child: TextField(
                                    onChanged: (value) =>
                                        updateUserDescription(value),
                                    maxLines:
                                        3, // Set the maximum number of lines for the TextField
                                    decoration: InputDecoration(
                                      hintText: ' Instructor Signature',
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 25.0),
                                      border: OutlineInputBorder(),
                                      // Set the internal vertical padding
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0.0),
                                  child: Text(
                                    userDescription.isEmpty
                                        ? ''
                                        : userDescription,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                        //SizedBox(height: 10),
                        Container(
                            height: 97,
                            width: 390,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 16),
                                  child: TextField(
                                    onChanged: (value) =>
                                        updateUserDescription(value),
                                    maxLines:
                                        3, // Set the maximum number of lines for the TextField
                                    decoration: InputDecoration(
                                      hintText: 'Trainer Comment',
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 25.0),
                                      border: OutlineInputBorder(),
                                      // Set the internal vertical padding
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0.0),
                                  child: Text(
                                    userDescription.isEmpty
                                        ? ''
                                        : userDescription,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          height: 38,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(05),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Text('Add Substance',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFF243B6A),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 160.0),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  addsubstancepages()));
                                    },
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      child: Center(
                                        child: Icon(
                                          Icons.add_circle,
                                          color: Color(0xFF243B6A),
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 150,
                          width: 380,
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Card(
                            elevation: 15.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 010,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: CircleAvatar(
                                        child: Text(
                                          '1', // Replace this with the desired text
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Customize the text color if needed
                                            fontSize:
                                                20.0, // Adjust the font size of the text
                                            fontWeight: FontWeight
                                                .bold, // Adjust the font weight of the text
                                          ),
                                        ),
                                        backgroundColor: Color(
                                            0xFF243B6A), // Customize the background color of the circle
                                        radius:
                                            15.0, // Adjust the size of the circle
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Heroin",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 180.0),
                                      child: Text(
                                        "2g",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70.0),
                                  child: Text(
                                    "Search Bay (mental Step)1.2m",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 010,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02),
                                      child: Text(
                                        "30 min",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02, right: 17),
                                      child: Text(
                                        "Real",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 03),
                        Container(
                          height: 150,
                          width: 380,
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Card(
                            elevation: 15.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 010,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: CircleAvatar(
                                        child: Text(
                                          '3', // Replace this with the desired text
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Customize the text color if needed
                                            fontSize:
                                                20.0, // Adjust the font size of the text
                                            fontWeight: FontWeight
                                                .bold, // Adjust the font weight of the text
                                          ),
                                        ),
                                        backgroundColor: Color(
                                            0xFF243B6A), // Customize the background color of the circle
                                        radius:
                                            15.0, // Adjust the size of the circle
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Heroin",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 180.0),
                                      child: Text(
                                        "3g",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70.0),
                                  child: Text(
                                    "Search Bay (mental Step)1.2m",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 010,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02),
                                      child: Text(
                                        "30 min",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02, right: 17),
                                      child: Text(
                                        "Real",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 03),
                        Container(
                          height: 150,
                          width: 380,
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Card(
                            elevation: 15.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 010,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: CircleAvatar(
                                        child: Text(
                                          '2', // Replace this with the desired text
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Customize the text color if needed
                                            fontSize:
                                                20.0, // Adjust the font size of the text
                                            fontWeight: FontWeight
                                                .bold, // Adjust the font weight of the text
                                          ),
                                        ),
                                        backgroundColor: Color(
                                            0xFF243B6A), // Customize the background color of the circle
                                        radius:
                                            15.0, // Adjust the size of the circle
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Heroin",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 180.0),
                                      child: Text(
                                        "4",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70.0),
                                  child: Text(
                                    "Search Bay (mental Step)1.2m",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 010,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02),
                                      child: Text(
                                        "30 min",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02, right: 17),
                                      child: Text(
                                        "Real",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 03),
                        Container(
                          height: 150,
                          width: 380,
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Card(
                            elevation: 15.0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 010,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: CircleAvatar(
                                        child: Text(
                                          '1', // Replace this with the desired text
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Customize the text color if needed
                                            fontSize:
                                                20.0, // Adjust the font size of the text
                                            fontWeight: FontWeight
                                                .bold, // Adjust the font weight of the text
                                          ),
                                        ),
                                        backgroundColor: Color(
                                            0xFF243B6A), // Customize the background color of the circle
                                        radius:
                                            15.0, // Adjust the size of the circle
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Heroin",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 180.0),
                                      child: Text(
                                        "2g",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 21,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 70.0),
                                  child: Text(
                                    "Search Bay (mental Step)1.2m",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 010,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02),
                                      child: Text(
                                        "30 min",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 02, right: 17),
                                      child: Text(
                                        "Real",
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (_selectedValue == 2)
                  Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 65,
                          width: 360,
                          margin: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, top: 8),
                                        child: Text('Handler Name',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Colors.grey,
                                            )),
                                      ),
                                      SizedBox(height: 03),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10.0, top: 2),
                                        child: Text('Alex Smith',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Colors.black,
                                            )),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 168.0),
                                    child: IconButton(
                                        icon: Icon(Icons.arrow_forward_ios,
                                            color: Colors.black87),
                                        onPressed: () => {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Selecthandler())),
                                            }),
                                  )
                                ],
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 65,
                          width: 360,
                          margin: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 210.0, top: 8),
                                child: Text('Trainer Name',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )),
                              ),
                              SizedBox(height: 03),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 225.0, top: 2),
                                child: Text('Wayne Gell',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 65,
                          width: 360,
                          margin: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(08),
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 190.0, top: 8),
                                child: Text('Company Name',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )),
                              ),
                              SizedBox(height: 03),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 155.0, top: 3),
                                child: Text('ABC Private Limited',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          )),
                      Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(
                          left: 6,
                          top: 00,
                        ),
                        height: 80,
                        width: 380,
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 65,
                          width: 360,
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
                                padding: const EdgeInsets.only(
                                    right: 210.0, top: 10),
                                child: Text('Classification',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )),
                              ),
                              SizedBox(height: 05),
                              Container(
                                height: 25,
                                width: 340,
                                padding: EdgeInsets.only(left: 08, right: 05),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
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
                      SizedBox(height: 15),
                      Container(
                        height: 125,
                        width: 360,
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
                              padding:
                                  const EdgeInsets.only(right: 280.0, top: 10),
                              child: Text(
                                "Type",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              width: 340,
                              child: Row(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Checkbox(
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked = value ?? false;
                                            });
                                          },
                                        ),
                                        Text('Continuation',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.black,
                                            )),
                                      ]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 58.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: _isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _isChecked = value ?? false;
                                              });
                                            },
                                          ),
                                          Text('Initial',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.black,
                                              )),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 340,
                              height: 20,
                              child: Row(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Checkbox(
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              _isChecked = value ?? false;
                                            });
                                          },
                                        ),
                                        Text('Contingency',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.black,
                                            )),
                                      ]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            value: _isChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                _isChecked = value ?? false;
                                              });
                                            },
                                          ),
                                          Text('Refresher',
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Colors.black,
                                              )),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                          height: 65,
                          width: 360,
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
                                padding: const EdgeInsets.only(
                                    right: 220.0, top: 10),
                                child: Text('Conditions',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )),
                              ),
                              SizedBox(height: 05),
                              Container(
                                height: 25,
                                width: 340,
                                padding: EdgeInsets.only(left: 15, right: 05),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
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
                      SizedBox(height: 15),
                      Container(
                          height: 65,
                          width: 360,
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
                                padding: const EdgeInsets.only(
                                    right: 250.0, top: 10),
                                child: Text('Venue',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.grey,
                                    )),
                              ),
                              SizedBox(height: 05),
                              Container(
                                height: 25,
                                width: 340,
                                padding: EdgeInsets.only(left: 15, right: 05),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
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

                      SizedBox(height: 15),
                      _getWidgetForSelectedOption(),
                      SizedBox(height: 15),
                      Container(
                          height: 97,
                          width: 390,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 16),
                                child: TextField(
                                  onChanged: (value) =>
                                      updateUserDescription(value),
                                  maxLines:
                                      3, // Set the maximum number of lines for the TextField
                                  decoration: InputDecoration(
                                    hintText: ' Instructor Signature',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 25.0),
                                    border: OutlineInputBorder(),
                                    // Set the internal vertical padding
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.0),
                                child: Text(
                                  userDescription.isEmpty
                                      ? ''
                                      : userDescription,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          )),
                      //SizedBox(height: 10),
                      Container(
                          height: 97,
                          width: 390,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 16),
                                child: TextField(
                                  onChanged: (value) =>
                                      updateUserDescription(value),
                                  maxLines:
                                      3, // Set the maximum number of lines for the TextField
                                  decoration: InputDecoration(
                                    hintText: 'Trainer Comment',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 25.0),
                                    border: OutlineInputBorder(),
                                    // Set the internal vertical padding
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.0),
                                child: Text(
                                  userDescription.isEmpty
                                      ? ''
                                      : userDescription,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        height: 38,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(05),
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Text('Add Substance',
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xFF243B6A),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 160.0),
                              child: InkWell(
                                  onTap: () {
                                    // Add your onPressed action here
                                    print('Button clicked');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    child: Center(
                                      child: Icon(
                                        Icons.add_circle,
                                        color: Color(0xFF243B6A),
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 150,
                        width: 380,
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: Card(
                          elevation: 15.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 010,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: CircleAvatar(
                                      child: Text(
                                        '1', // Replace this with the desired text
                                        style: TextStyle(
                                          color: Colors
                                              .white, // Customize the text color if needed
                                          fontSize:
                                              20.0, // Adjust the font size of the text
                                          fontWeight: FontWeight
                                              .bold, // Adjust the font weight of the text
                                        ),
                                      ),
                                      backgroundColor: Color(
                                          0xFF243B6A), // Customize the background color of the circle
                                      radius:
                                          15.0, // Adjust the size of the circle
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Heroin",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180.0),
                                    child: Text(
                                      "2g",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70.0),
                                child: Text(
                                  "Search Bay (mental Step)1.2m",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 010,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02),
                                    child: Text(
                                      "30 min",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02, right: 17),
                                    child: Text(
                                      "Real",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 03),
                      Container(
                        height: 150,
                        width: 380,
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: Card(
                          elevation: 15.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 010,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: CircleAvatar(
                                      child: Text(
                                        '3', // Replace this with the desired text
                                        style: TextStyle(
                                          color: Colors
                                              .white, // Customize the text color if needed
                                          fontSize:
                                              20.0, // Adjust the font size of the text
                                          fontWeight: FontWeight
                                              .bold, // Adjust the font weight of the text
                                        ),
                                      ),
                                      backgroundColor: Color(
                                          0xFF243B6A), // Customize the background color of the circle
                                      radius:
                                          15.0, // Adjust the size of the circle
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Heroin",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180.0),
                                    child: Text(
                                      "3g",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70.0),
                                child: Text(
                                  "Search Bay (mental Step)1.2m",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 010,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02),
                                    child: Text(
                                      "30 min",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02, right: 17),
                                    child: Text(
                                      "Real",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 03),
                      Container(
                        height: 150,
                        width: 380,
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: Card(
                          elevation: 15.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 010,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: CircleAvatar(
                                      child: Text(
                                        '2', // Replace this with the desired text
                                        style: TextStyle(
                                          color: Colors
                                              .white, // Customize the text color if needed
                                          fontSize:
                                              20.0, // Adjust the font size of the text
                                          fontWeight: FontWeight
                                              .bold, // Adjust the font weight of the text
                                        ),
                                      ),
                                      backgroundColor: Color(
                                          0xFF243B6A), // Customize the background color of the circle
                                      radius:
                                          15.0, // Adjust the size of the circle
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Heroin",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180.0),
                                    child: Text(
                                      "4",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70.0),
                                child: Text(
                                  "Search Bay (mental Step)1.2m",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 010,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02),
                                    child: Text(
                                      "30 min",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02, right: 17),
                                    child: Text(
                                      "Real",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 03),
                      Container(
                        height: 150,
                        width: 380,
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: Card(
                          elevation: 15.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 010,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: CircleAvatar(
                                      child: Text(
                                        '1', // Replace this with the desired text
                                        style: TextStyle(
                                          color: Colors
                                              .white, // Customize the text color if needed
                                          fontSize:
                                              20.0, // Adjust the font size of the text
                                          fontWeight: FontWeight
                                              .bold, // Adjust the font weight of the text
                                        ),
                                      ),
                                      backgroundColor: Color(
                                          0xFF243B6A), // Customize the background color of the circle
                                      radius:
                                          15.0, // Adjust the size of the circle
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Heroin",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180.0),
                                    child: Text(
                                      "2g",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70.0),
                                child: Text(
                                  "Search Bay (mental Step)1.2m",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 010,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02),
                                    child: Text(
                                      "30 min",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 02, right: 17),
                                    child: Text(
                                      "Real",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
              ],
            ),
          ),
        ));
  }
}
