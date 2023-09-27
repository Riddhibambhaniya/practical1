import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ImageGridView extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/inter9 app/Rectangle 961.jpg',
    'assets/inter9 app/Rectangle 961.jpg',
    'assets/inter9 app/Rectangle 961.jpg',
    'assets/inter9 app/Rectangle 961.jpg',
    'assets/inter9 app/Rectangle 961.jpg',
    'assets/inter9 app/Rectangle 961.jpg',
  ];
  final List<String> name =<String>[
    '20/09/2021-10:00 AM',
    '20/09/2021-10:00 AM',
    '20/09/2021-10:00 AM',
    '20/09/2021-10:00 AM',
    '20/09/2021-10:00 AM',
    '20/09/2021-10:00 AM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF243B6A),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text("OP Report Images",
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
    body: SafeArea(
    child:SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 10,),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,

              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {

                return Container(
      child: Column(
        children: [

            Image.asset(
              imagePaths[index],
              width: 170,
              height: 150,
              fit: BoxFit.cover,
            ),

             Container(color: Color(0xFF243B6A),height: 20,width: 170,
                 child: Center(
                   child: Text(name[index],style: GoogleFonts.roboto(
                     fontWeight: FontWeight.w400,
                     fontSize: 14,
                     color: Colors.white,
                   ),),
                 )),



        ],


      ),
    );


              },
            ),
            Padding(
              padding: const EdgeInsets.only (bottom: 50.0),
              child: Row(
                children: [
                  Container(
                    width: 382,
                    height: 70,
                    padding: EdgeInsets.only(left: 15, right: 15,top:15),
                    child: ElevatedButton(
                      child: Text('UPLOAD'),
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
    title: Image.asset(
      'assets/inter9 app/Frame.jpg',
      //height: 200,
      //width: 200,
      fit: BoxFit.fill,
    ),
    content: Text("Your Images Upload Successfully",
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color:Color(0xff243b6a),
      ),),

  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

