import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../loginpage  INter9 app/settings.dart';
import 'Add Event for Dog.dart';



class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  // You can use this function to open your event popup.
  void _showEventPopup(DateTime selectedDate) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Text('Events Name'),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.edit_document,
                    color: Colors.yellow,
                  ),
                  //tooltip: 'settings',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => addevent()));
                  },
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                //tooltip: 'settings',
                onPressed: () {},
              ),
            ],
          ),

          content:Container(height: 110,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Training',style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left:38.0),
                      child: Text('20/07/2021 To 24/07/2021',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black,
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right:190.0),
                  child: Text('London',style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),),
                ),
                SizedBox(height:10,),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 0),
                  child: Text(
                    '''It is a long established fact that a reader will be distracted by the readable content of a page layout.
                      ''',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close', style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFF243B6A),
              ),),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            color: Colors.black12,
            width: 400,
            height: 90,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/inter9 app/profile pic.jpg',
                    height: 60,
                    width: 80,
                    //fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Wayne gell",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Image.asset(
                    'assets/inter9 app/user profile pic 1.jpg',
                    height: 60,
                    width: 100,
                    //fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  "My Schedule",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color(0xFF243B6A),
                    ),
                    Text(
                      "TRAINING",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xFF243B6A),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.circle, color: Colors.red),
                    Text(
                      "WORK",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.red),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TableCalendar(
            firstDay: DateTime(2000),
            lastDay: DateTime(2050),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay; // update focused day
              });
              _showEventPopup(selectedDay); // Open event popup
            },
          ),
        ],
      ),
    );
  }
}
