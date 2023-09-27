import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practical1/android%20practical1/page1.dart';
import 'package:practical1/android%20practical1/page3.dart';


class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black87),
        onPressed: () =>
        Navigator.pushNamed(context, '/splashScreen')

  ),
        title: Text("Vegitables",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 36,color: Colors.black)),
      backgroundColor: Colors.white,
      ),
      body:SafeArea(
             child: SingleChildScrollView(
             child: Column(
               children: [
                 GridView.builder(
                   itemCount: 6,
                   shrinkWrap: true,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2, childAspectRatio: 240 / 300),
                   itemBuilder: (context, index) {
                     if(index==1){

                       return  new GestureDetector(
                           onTap: () {
                             Navigator.pushNamed(context, '/detailscreen');

                           },child: Stack(
                         children: [
                           Padding(
                               padding: const EdgeInsets.only(left:30.0,right:30.0,top:65),
                               child: Container(
                                 height: height / 1.1,
                                 width: width / 2,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   color: Colors.white,boxShadow: [

                                   BoxShadow(
                                     color: Colors.grey,
                                     offset: const Offset(0.0, 0.0),
                                     blurRadius: 2.0,
                                     spreadRadius: 0.0,
                                   ), //BoxShadow
                                 ],
                                 ),
                               )),
                           Positioned(
                             top: 20,
                             left: width / 8.0,
                             child: CircleAvatar(
                               radius: 50,
                               backgroundImage: AssetImage('assets/onion1.jpg'),
                             ),
                           ),
                           Positioned(
                             top: height / 6.3,
                             left: width / 7,
                             child: Text("Onion",
                                 style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w600, fontSize: 22)),
                           ),
                           Positioned(
                               top: height / 5.0,
                               left: width / 5,
                               child: Text("₹20",
                                   style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w700,
                                     fontSize: 17,
                                     color: Colors.deepOrange,
                                   ))),
                           Positioned(
                               top: height / 4.4,
                               left: width / 9,
                               child: Text(
                                 '''The potato is a room 
        vegetable native
        to the Americas...''',
                                 style: GoogleFonts.poppins(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 10,
                                 ),
                                 maxLines: 3,
                               ))
                         ],
                       ));
                     }
                     else{

                       return Stack(
                         children: [
                           Padding(
                               padding: const EdgeInsets.only(left:30.0,right:30.0,top:65),
                               child: Container(
                                 height: height / 1.1,
                                 width: width / 2,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   color: Colors.white,boxShadow: [

                                   BoxShadow(
                                     color: Colors.grey,
                                     offset: const Offset(0.0, 0.0),
                                     blurRadius: 2.0,
                                     spreadRadius: 0.0,
                                   ), //BoxShadow
                                 ],
                                 ),
                               )),
                           Positioned(
                             top: 20,
                             left: width / 8.0,
                             child: CircleAvatar(
                               radius: 50,
                               backgroundImage: AssetImage('assets/potato2.jpg'),
                             ),
                           ),
                           Positioned(
                             top: height / 6.3,
                             left: width / 7,
                             child: Text("Potato",
                                 style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w600, fontSize: 22)),
                           ),
                           Positioned(
                               top: height / 5.0,
                               left: width / 5,
                               child: Text("₹20",
                                   style: GoogleFonts.poppins(
                                     fontWeight: FontWeight.w700,
                                     fontSize: 17,
                                     color: Colors.deepOrange,
                                   ))),
                           Positioned(
                               top: height / 4.3,
                               left: width / 9,
                               child: Text(
                                 '''The potato is a room 
        vegetable native
        to the Americas...''',
                                 style: GoogleFonts.poppins(
                                   fontWeight: FontWeight.w400,
                                   fontSize: 10,
                                 ),
                                 maxLines: 3,
                               ))
                         ],
                       );
                     }
                   },
                 )
               ],
             ),)
      )

    );
  }
}
