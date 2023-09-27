import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class opsummaryedd extends StatefulWidget {
  const  opsummaryedd  ({Key? key}) : super(key: key);

  @override
  State<opsummaryedd> createState() => _opsummaryeddState();
}

class _opsummaryeddState extends State< opsummaryedd> {
  String userDescription = "";

  void updateUserDescription(String description) {
    setState(() {
      userDescription = description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("OP Summary",
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
        body:SafeArea(
          child:SingleChildScrollView(
            child:Column(
              children: [
                SizedBox(height: 10,),
                Container(height:275,width:390,padding: EdgeInsets.only(left:10,right:10),
                    child: Card(
                        child:Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0,top:05),
                                    child: Text("EDD",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0,right: 10),
                                    child: Text("Bess",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),),
                                  ),
                                ]
                            ),
                            SizedBox(height: 010,),

                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:20.0,top:05),
                                    child: Text("Building",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Colors.black,
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5.0,right: 10),
                                    child: Text("Wayne",
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),),
                                  ),
                                ]
                            ),
                            SizedBox(height: 05,),
                            Container(height: 30,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:03.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.sunny, size: 22),color: Colors.yellow,
                                      //tooltip: 'settings',
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text(
                                  'warm',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),



                                     Padding(
                                      padding: const EdgeInsets.only(left:190),
                                      child: Text(
                                        '30min',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Colors.black,

                                        )
                                    ), //IconButt
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 05,),
                            Container(height: 30,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:03.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.watch_later_sharp, size: 22),color:Color(0xFF243B6A) ,
                                      //tooltip: 'settings',
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text(
                                    '9:00 am to 6:00pm',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),



                                  Padding(
                                    padding: const EdgeInsets.only(left:35),
                                    child: Text(
                                        '10/07/2021',
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Colors.black,

                                        )
                                    ), //IconButt
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 03,),
                            Container(height: 30,
                              child: Row(
                                children: [ Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: Text(
                                    'Images',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:220.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.remove_red_eye, size: 22),color:Color(0xFF243B6A),
                                        //tooltip: 'settings',
                                      onPressed: () {},
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 05,),
                            Padding(
                              padding: const EdgeInsets.only(right:220.0),
                              child: Text(
                                'Accident-No',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 03,),
                            Container(height: 30,
                              child: Row(
                                children: [ Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: Text(
                                    'Position Indication -Yes',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:83.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.info, size: 22),color:Color(0xFF243B6A),
                                      //tooltip: 'settings',
                                      onPressed: () {},
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 03,),
                            Container(height: 30,
                              child: Row(
                                children: [ Padding(
                                  padding: const EdgeInsets.only(left:20.0),
                                  child: Text(
                                    'Areas of interest -Yes',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:100.0),
                                    child: IconButton(
                                      icon: const Icon(Icons.info, size: 22),color:Color(0xFF243B6A),
                                      //tooltip: 'settings',
                                      onPressed: () {},
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        )
                    )
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right:188.0),
                  child: Text("Description of Task",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(height: 08,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                  child: TextField(
                    onChanged: (value) => updateUserDescription(value),
                    maxLines: 3, // Set the maximum number of lines for the TextField
                    decoration: InputDecoration(
                      hintText: ' description here...',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0), // Set the internal vertical padding
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right:190.0),
                  child: Text("Future Information",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16),
                  child: TextField(
                    onChanged: (value) => updateUserDescription(value),
                    maxLines: 3, // Set the maximum number of lines for the TextField
                    decoration: InputDecoration(
                      hintText: ' description here...',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0), // Set the internal vertical padding
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    userDescription.isEmpty ? '' : userDescription,
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only (bottom: 50.0,),
                  child: Row(
                    children: [
                      Container(
                        width: 382,
                        height: 70,
                        padding: EdgeInsets.only(left: 15, right: 15,top:15),
                        child: ElevatedButton(
                          child: Text('SAVE'),
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
                            showAlertDialog(context);
                          },
                        ),
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



  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("CLOSE"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Position Indication"),
      content: Text('''It IsA Long Established Fact That A Reader
 Will Be Distracted By The Readable Of A
 Page When Looking At Its Layout. The
 Point Of Using Lorem Ipsum is That It Has
 A More-Or-Less Normal.''' , maxLines: 5,
          style: TextStyle(fontSize: 13)),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

