import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practical1/dog%20profile/select%20dog.dart';

import '../loginpage  INter9 app/dogprofile.dart';
import '../loginpage  INter9 app/settings.dart';
import '../profile document upload pages/upload documents.dart';
import '../profile document upload pages/uploaddocumentsinsurance.dart';
import 'edit dog profile.dart';

class maindogprofile extends StatefulWidget {
  const maindogprofile({Key? key, required String name}) : super(key: key);

  @override
  State<maindogprofile> createState() => _maindogprofileState();
}

class _maindogprofileState extends State<maindogprofile> {
  TextEditingController Name = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                " Dog Profile",
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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.swap_horiz),
              tooltip: 'settings',
              onPressed: () {},
            ), //IconBu
            IconButton(
                icon: const Icon(Icons.share),
                tooltip: 'settings',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => settings()),
                  );
                }), //IconButton
          ]),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 00),
                  height: 200.0,
                  color: Colors.black12,
                  child: null),
              Expanded(
                  child: Container(
                      //color: Colors.cyan,
                      child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15, right: 05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Passport",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                          color: Colors.black,
                        ),
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            shape: CircleBorder(),
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors
                                    .green; // Color when checkbox is selected
                              }
                              return Colors
                                  .lightGreen; // Color when checkbox is unselected
                            }),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.edit_calendar_outlined,
                              color: Colors.yellow,
                            ),
                            //tooltip: 'settings',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => UploadDocuments()));
                            },
                          ),
                        ],
                      ),
                      //IconBut
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 05, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Passport number",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "AK12809AC",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 06,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 05, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date of Birth",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "10/07/2021",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 05, left: 15, right: 05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Insurance",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                          color: Colors.black,
                        ),
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            shape: CircleBorder(),
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors
                                    .green; // Color when checkbox is selected
                              }
                              return Colors
                                  .lightGreen; // Color when checkbox is unselected
                            }),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.edit_calendar_outlined,
                              color: Colors.yellow,
                            ),
                            //tooltip: 'settings',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => UploadDocumentsinsurance ()));
                            },
                          ),
                        ],
                      ),
                      //IconBut
                    ],
                  ),
                ),
                Container(
                    width: 400,
                    height: 70,
                    padding: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.zero,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 340,
                          height: 60,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 210.0),
                                child: Text(
                                  "Medication",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                width: 370,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13.0, top: 03),
                                  child: Text(
                                    '''Ut sit amet tortor vehicula,laoreet urna vitae,viverra
quam. Praesent fringilla''',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60, width: 30,

                          child: Padding(
                            padding: const EdgeInsets.only(right: 030),
                            child: IconButton(
                              icon: const Icon(Icons.info, size: 22),
                              //tooltip: 'settings',
                              onPressed: () {},
                            ),
                          ), //IconButt
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 05, left: 15, right: 05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Vet Record",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle, size: 22),
                        //tooltip: 'settings',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 360,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Vaccine Name",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.file_copy, size: 22),
                                  //tooltip: 'settings',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 255, top: 03),
                            child: Text(
                              "10/07/2021",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.zero,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 360,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Vaccine Name",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.file_copy, size: 22),
                                  //tooltip: 'settings',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 255, top: 03),
                            child: Text(
                              "10/07/2020",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ])))
            ],
          ),
          // Profile image
          Positioned(
              top: 100.0,
              // (background container size) - (circle height / 2)
              left: 00,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                height: 150.0,
                width: 140.0,
                child: Image.asset(
                  'assets/inter9 app/DOGPIC.jpg',
                  height: 150,
                  width: 300,
                  //fit: BoxFit.fill,
                ),
              )),
          Positioned(
              top: 180.0,
              // (background container size) - (circle height / 2)
              left: 110,
              child: Container(
                //padding: EdgeInsets.only(left:10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF243B6A),
                ),
                // color:Color(0xFF243B6A),
                child: IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    //tooltip: 'settings',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => editdogprofile()),
                      );
                    }), //IconButt
              )),
          Positioned(
              top: 120.0,
              // (background container size) - (circle height / 2)
              left: 160,
              child: Container(
                //padding: EdgeInsets.only(left:10),
                child: Text(
                  " Dog Name ",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ), //IconButt
              )),
          Positioned(
              top: 155.0,
              // (background container size) - (circle height / 2)
              left: 160,
              child: Container(
                //padding: EdgeInsets.only(left:10),
                child: Text(
                  " Microchip Number ",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ), //IconButt
              )),
          Positioned(
              top: 130.0,
              // (background container size) - (circle height / 2)
              left: 340,
              child: Container(
                child: IconButton(
                    icon: const Icon(Icons.edit,
                        color: Color(0xFF243B6A), size: 35),
                    //tooltip: 'settings',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDog()),
                      );
                    }), //IconButt
              )),
        ],
      ),
    );
  }
}
