import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../dog profile/add dog profile.dart';


class dogprofile extends StatefulWidget {
  const dogprofile({Key? key, required String email}) : super(key: key);
  @override
  State<dogprofile> createState() => _dogprofileState();
}

class _dogprofileState extends State<dogprofile> {
  final _formKey = GlobalKey<FormState>();
  Color borderColor = Color(0xFF264683);
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
        body: SafeArea(
            child: SingleChildScrollView(
                child:Column(children: [
                  Container(
                      height: 805,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: borderColor,
                          width: 20.0,
                        ),
                      ),
                      child: Column(children: [
                        Stack(children: [
                          Container(
                              width: 400,
                              height: 700,
                              decoration: BoxDecoration(
                                  //color: Colors.white
                                  ),
                              child: Column(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 175, top: 30),
                                  child: Text(
                                    "Dog Profile",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 31,
                                      color: Color(0xFF243B6A),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Image.asset(
                                  'assets/inter9 app/Mask Group (3).jpg',
                                  //height: 200,
                                  //width: 200,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(height: 20,),
                                Form(
                                  key: _formKey,
                                  child: Column(children: [
                                    Row(children: [
                                      Container(

                                        height: 65,
                                        width: 340,
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
                                            hintText: 'Enter Dog Name',
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
                                            } else if (value != "riddhi") {
                                              return 'enter valid correct name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ]),
                                    Row(children: [
                                      Container(

                                        height: 65,
                                        width: 340,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, top: 20),
                                        child: TextFormField(
                                          controller: Number,
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
                                            hintText:
                                                'Enter Your Microchip Number',
                                            hintStyle: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18,
                                              color: Color(0xFF243B6A),
                                            ),
                                            labelText: 'Microchip  Number',
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
                                              return 'enter valid  Microchip Number';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ]),
                                    Row(children: [
                                      Container(

                                        height: 65,
                                        width: 340,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10, top: 20),
                                        child: TextFormField(
                                          controller: Password,
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
                                            hintText:
                                                'Enter Your Microchip Number',
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
                                              return 'Please enter correct Microchip Number';
                                            } else if (value != "123") {
                                              return 'enter valid  Microchip Number';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ]),
                                    Container(
                                      // color: Colors.red,

                                      height: 65,
                                      width: 340,
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 20),
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
                                                      color: Colors.deepPurple,
                                                      width: 0.0),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black38,
                                                      width: 0.0),
                                                ),
                                                labelText: 'Date of Birth',
                                                labelStyle: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 17,
                                                  color: Colors.black54,
                                                ),
                                                suffixIcon: IconButton(
                                                  onPressed: () =>
                                                      _selectDate(context),
                                                  icon:
                                                      Icon(Icons.calendar_today),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 330,
                                          height: 80,
                                          padding: EdgeInsets.only(
                                             left:10, top: 20),
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
                                                  borderRadius:
                                                      BorderRadius.circular(04)),
                                            ),
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                if (Name.text == "riddhi") {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            adddogprofile()),
                                                  );
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
                                                      content: Text(
                                                          'Please fill input')),
                                                );
                                              }
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/Loginscreen');
                                        },
                                        child: Text(
                                          'Skip Now',
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            color: Color(0xff243B6A),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                )
                              ]))
                        ])
                      ]))

                ],)

            )
        )
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>(
        '_dateController', _dateController));
    properties
        .add(DiagnosticsProperty<DateTime>('_selectedDate', _selectedDate));
  }
}
