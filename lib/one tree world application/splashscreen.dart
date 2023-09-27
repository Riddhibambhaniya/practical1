import 'package:flutter/material.dart';
class Splashscreen1 extends StatefulWidget {
  @override
  State<Splashscreen1> createState() => _Splashscreen1State();
}

class _Splashscreen1State extends State<Splashscreen1> {


@override
Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 2), () {
    // Navigate based on some condition (e.g., isLoggedIn)
    bool isLoggedIn = true; // Change this based on your logic
    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/loginscreen11');// Navigate to the profile screen
    }
  });
  return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column(
            children: [
              Center(
                child: Container(height: 800,
                    child:InkWell(
                        child: Center(
                          child: Container(
                            child: Image.asset(
                              'assets/one tree world/splashscreen.jpg',
                              height: 300,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){
                        }

                    )
                ),
              ) ,
            ],
          )

        ),
      )

  );
}
}