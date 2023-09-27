import 'package:flutter/material.dart';

import 'dashbord11.dart';



class Ordersscreen extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Container(
            height: 200.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Color(0xFF79A206),
                  width: MediaQuery.of(context).size.width,
                  height: 95.0,

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,bottom: 20),
                          child: IconButton(
                              icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white,size: 40,),
                              onPressed: () => { Navigator.pushNamed(context, '/dashbordscreen11')}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,bottom: 11),
                          child: Text(
                            "Orders",
                            style: TextStyle(color: Colors.white, fontSize: 24.0),
                          ),
                        ),


                      ],
                    )


                ),
                Positioned(
                  top: 70.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [

                          Expanded(

                              child: Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                  ),
                                ),
                              ),
                            ),

                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              //print("your menu action here");
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )


    );
  }
}