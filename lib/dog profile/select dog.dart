import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../loginpage  INter9 app/settings.dart';
import 'add dog profile.dart';
import 'main dog profile.dart';

class SelectDog extends StatefulWidget {
  const SelectDog({Key? key}) : super(key: key);

  @override
  State<SelectDog> createState() => _SelectDogState();
}

class _SelectDogState extends State<SelectDog> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                "Select Dog",
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
              onPressed: () => {Navigator.pop(context),
              }),
        ),
      body:SafeArea(
        child:SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: 20,),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/select dog  1.jpg'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:55,top:10),
                            child: Text(
                              "Dog Name",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,top:10),
                            child: Text(
                              "Microchip Number",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        tooltip: 'settings',
                        onPressed: () {
    Navigator.push(
    context,MaterialPageRoute(builder: (context) =>  settings  ()),);
    }

                      ), //Ico

                    ],
                  ),
                ),
              ),

             GestureDetector(
              onTap: () {
    Navigator.push(
    context,MaterialPageRoute(builder: (context) => maindogprofile (name: '',)),);
    },


              child: Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/DOGPIC.jpg'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:55,top:10),
                            child: Text(
                              "Dog Name",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,top:10),
                            child: Text(
                              "Microchip Number",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        tooltip: 'settings',
                        onPressed: () {
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) =>  settings  ()),);
                        },
                      ), //Ico

                    ],
                  ),
                ),
              ),
             ),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/dog blur pic.jpg'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:55,top:10),
                            child: Text(
                              "Dog Name",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,top:10),
                            child: Text(
                              "Microchip Number",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        tooltip: 'settings',
                        onPressed: () {
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) =>  settings  ()),);
                        },
                      ), //Ico

                    ],
                  ),
                ),
              ),
              Container(width: 390,padding: EdgeInsets.only(left:10,right:10),height: 100,
                child: Card(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/inter9 app/dog blur pic.jpg'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:55,top:10),
                            child: Text(
                              "Dog Name",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,top:10),
                            child: Text(
                              "Microchip Number",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),

                        onPressed: () {
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) =>  settings  ()),);
                        }

                      ), //Ico

                    ],
                  ),
                ),
              ),


            ],
          )
        )
      ),
    floatingActionButton: FloatingActionButton(
       onPressed: () {
      Navigator.push(
        context,MaterialPageRoute(builder: (context) =>   adddogprofile  ()),);
    },

       child: Icon(Icons.add),
       backgroundColor:Color(0xFF243B6A),
     ),

    );
  }
}