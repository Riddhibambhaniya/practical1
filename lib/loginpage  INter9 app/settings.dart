import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../User profile/user profile1.dart';
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  List<String> items = [
    'My Profile',
    'Change Password',
    'About Us',
    'Terms and Condition ',
    'Privacy Policy',
    'Log Out',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right:190),
            child: Text("Settings",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color:Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {Navigator.pop(context)}),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              children: [
                Text(items[index]),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    if (items[index] == 'My Profile') {Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => userprofile1()));
                    } else if (items[index] == '') {
                      // Perform sign-out logic here
                      // For example, you can clear user session and navigate to login screen
                      Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
                    }
                  },
                ),
              ],
            ),
            onTap: () {
    if (items[index] == 'My Profile') {
    Navigator.push(context, MaterialPageRoute(builder: (context) => userprofile1()));
    } else if (items[index] == '') {
    // Perform sign-out logic here
    // For example, you can clear user session and navigate to login screen
    Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
    }}
          );
        },
      ),
    );
  }
}
