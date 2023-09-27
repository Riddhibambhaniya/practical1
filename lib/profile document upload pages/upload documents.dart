import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practical1/profile%20document%20upload%20pages/upload%20documents%2022.dart';

import 'Newuploadpdf.dart';

class UploadDocuments extends StatefulWidget {
  const UploadDocuments({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadDocuments> createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                "Upload Documents",
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
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/inter9 app/upload screen.jpg',
                // height: 150,
                // width: 300,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Upload Your Documents",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "What you want to Upload?",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color(0xFF243B6A),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: 390,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => newuploadpdf()),
                      );
                    },
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/inter9 app/image file.jpg',
                        // height: 150,
                        // width: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => uploaddocuments2()),
                        );
                      },
                      child: Container(
                        height: 180,
                        child: Image.asset(
                          'assets/inter9 app/file image.jpg',
                          // height: 150,
                          // width: 300,
                          fit: BoxFit.fill,
                        ),
                      ))
                ],
              ),
            )
          ],
        ))));
  }
}
