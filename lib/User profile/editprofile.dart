import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practical1/User%20profile/user%20profile1.dart';


class editprofile extends StatefulWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  TextEditingController Name = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right:90),
            child: Text("Edit My Profile",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 26,
                color:Colors.white,
              ),),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  userprofile1()))}),
      ),
      body:SafeArea(
         child: SingleChildScrollView(   child: Form(key: _formKey,
           child:Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Row(children: [
                   Container(
                     margin: EdgeInsets.only(
                       left: 6,  ),
                     height: 100,
                     width: 370,
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
                         hintText: 'Enter Handler Name',
                         hintStyle: GoogleFonts.roboto(
                           fontWeight: FontWeight.w400,
                           fontSize: 18,
                           color: Color(0xFF243B6A),
                         ),
                         labelText: 'Name',
                         labelStyle: GoogleFonts.roboto(
                           fontWeight: FontWeight.w400,
                           fontSize: 17,
                           color: Colors.black54,
                         ),
                       ),
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter correct Handler Name ';
                         } else if (value != "Handler name") {
                           return 'enter valid Handler Name';
                         }
                         return null;
                       },
                     ),
                   ),
                 ]),
               ),
               Row(
                 children: [
                   Container(//color: Colors.cyan,
                     width: 384,
                     height: 90,
                     padding: EdgeInsets.only(left: 15, right: 15,top:20),
                     child: ElevatedButton(
                       child: Text('UPDATE PROFILE '),
                       style: ElevatedButton.styleFrom(
                         backgroundColor:  Color(0xff243b6a),
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
                           if (Name.text == "Handler name"
                              ) {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => userprofile1(

                                   )),
                             );
                           } else {
                             ScaffoldMessenger.of(context).showSnackBar(
                               const SnackBar(content: Text('Invalid Credentials')),
                             );
                           }
                         } else {
                           ScaffoldMessenger.of(context).showSnackBar(
                             const SnackBar(content: Text('Please fill input')),
                           );
                         }
                       },
                     ),
                   )
                 ],
               ),

             ],
           ))
         ),
      ) ,
    );
  }
}
