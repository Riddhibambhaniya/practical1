import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Selecthandler extends StatefulWidget {
  const  Selecthandler ({Key? key}) : super(key: key);

  @override
  State< Selecthandler > createState() => _SelecthandlerState();
}

class _SelecthandlerState extends State< Selecthandler > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "Select Handler",
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
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              SizedBox(height: 20,),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/Mask Group (15).jpg'),
                        ),
                      ),

                          Padding(
                            padding: const EdgeInsets.only(left:40,top:00),
                            child: Text(
                              " Name",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),



                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/Mask Group (13).jpg'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:40,top:00),
                        child: Text(
                          " Alex Smith",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/Mask Group (14).jpg'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:40,top:00),
                        child: Text(
                          " Name",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/Mask Group (16).jpg'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:40,top:00),
                        child: Text(
                          " Name",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}