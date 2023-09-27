import 'package:flutter/material.dart';

class Homepage1 extends StatefulWidget {
  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  final List<Map<String, dynamic>> cardsData = [
    {
      'imagePath': 'assets/one tree world/Rectangle 25 (3).jpg',
      'title': 'Plant one Tree',
      'description': '£99.00',
    },
    {
      'imagePath': 'assets/one tree world/Rectangle 25 (1).jpg',
      'title': 'Plant Two tree ',
      'description': '£99.00',
    },
    {
      'imagePath': 'assets/one tree world/Rectangle 25 (2).jpg',
      'title': 'Plant Three tree',
      'description': '£99.00',
    },
    {
      'imagePath': 'assets/one tree world/Rectangle 25.jpg',
      'title': 'Plant four tree',
      'description': '£99.00',
    },
    // Add more card data entries as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:
              SingleChildScrollView(
        child:
                 Container(
          child: Column(
            children: [
              Container(
                  height: 500,
                  //color: Colors.cyanAccent,
                  child: Stack(children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/one tree world/Rectangle 21.jpg',
                        //height: 110,
                        //width: 110,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        top: 80.0,
                        left: 110.0,
                        right: 0.0,
                        child: Container(
                          child: Text(
                            "OneTreeWorld",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 28.0),
                          ),
                        )),
                    Positioned(
                      top: 160.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 300,
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2.0),
                                color: Color(0xFFF6EDEE)),
                            child: Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "FIGHTING CLIMATE CHANGE IN THE UK",
                                style: TextStyle(
                                    color: Color(0xFF79A206),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "OneTreeWorld",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.0),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 28.0, right: 28),
                                child: Text(
                                  "We plant in our home country – the United Kingdom ‘Offset your deliveries carbon emissions by planting a tree in the UK for 99p’",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 98.0),
                                child: Row(
                                  children: [
                                    Container(
                                      //color: Colors.cyan,
                                      width: 150,
                                      height: 60,
                                      padding: EdgeInsets.only(
                                          left: 00, right: 00, top: 30),
                                      child: ElevatedButton(
                                          child: Text('Plant Now'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF79A206),
                                            // side: BorderSide(color: Colors.yellow, width: 5),
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(04)),
                                          ),
                                          onPressed: () {
                                            // if (_formKey.currentState!.validate()) {
                                            //   if (Name.text == "Jonhdoe" &&
                                            //       Password.text == "1234567") {
                                            //     Navigator.pushNamed(context, '/dashboard');
                                            //
                                            //   } else {
                                            //     ScaffoldMessenger.of(context)
                                            //         .showSnackBar(
                                            //       const SnackBar(
                                            //           content: Text(
                                            //               'Invalid Credentials')),
                                            //     );
                                            //   }
                                            // } else {
                                            //   ScaffoldMessenger.of(context)
                                            //       .showSnackBar(
                                            //     const SnackBar(
                                            //         content:
                                            //         Text('Please fill input')),
                                            //   );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                      color: Color(0xFF79A206),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0),
                                ),
                              ),
                            ])),
                      ),
                    ),
                    Positioned(
                        top: 400.0,
                        left: 270.0,
                        right: 0.0,
                        child: Container(
                          child: Image.asset(
                            'assets/one tree world/image 1.jpg',
                            height: 80,
                            width: 80,
                            // fit: BoxFit.fill,
                          ),
                        )),
                  ])),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 98.0),
                      child: Text(
                        "PLANT A TREE - FIGHT CLIMATE CHANGE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xFF79A206)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 220.0),
                      child: Text(
                        "How it works",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 140,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 28.0, bottom: 30),
                            child: Image.asset(
                              'assets/one tree world/Group 56.jpg',
                              height: 50,
                              width: 50,
                              //fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 148.0),
                                  child: Text(
                                    "Purchase",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    '''At online retailer’s checkout you have
the option to offset your carbon for
99p - this is used to plant a tree in the
UK.''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                    maxLines: 4,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 125.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 100,
                                        child: TextButton(
                                            onPressed: () {
                                              // Handle button press
                                            },
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Colors.green, // Text color
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 00, vertical: 0),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Read more',
                                                    style: TextStyle(
                                                        fontSize: 16)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward, // Replace with the desired icon from Icons class
                                                    size: 12.0,
                                                    color: Color(0xFF79A206)),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 28.0, bottom: 30),
                            child: Image.asset(
                              'assets/one tree world/Group 56 (1).jpg',
                              height: 50,
                              width: 50,
                              //fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 148.0),
                                  child: Text(
                                    "Delivery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    '''We arrange delivery to Farmers and
the Woodland Trust. They plant the
trees in the correct way.''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                    maxLines: 3,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 125.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 100,
                                        child: TextButton(
                                            onPressed: () {
                                              // Handle button press
                                            },
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Colors.green, // Text color
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 00, vertical: 0),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Read more',
                                                    style: TextStyle(
                                                        fontSize: 16)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward, // Replace with the desired icon from Icons class
                                                    size: 12.0,
                                                    color: Color(0xFF79A206)),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 28.0, bottom: 30),
                            child: Image.asset(
                              'assets/one tree world/Group 56 (2).jpg',
                              height: 50,
                              width: 50,
                              //fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 148.0),
                                  child: Text(
                                    "Evidence",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    '''Photos are taken at all planting sites
and you have the ability to share
your tree purchase via social media.''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                    maxLines: 3,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 125.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 100,
                                        child: TextButton(
                                            onPressed: () {
                                              // Handle button press
                                            },
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Colors.green, // Text color
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 00, vertical: 0),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Read more',
                                                    style: TextStyle(
                                                        fontSize: 16)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward, // Replace with the desired icon from Icons class
                                                    size: 12.0,
                                                    color: Color(0xFF79A206)),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 28.0, bottom: 30),
                            child: Image.asset(
                              'assets/one tree world/Group 56 (3).jpg',
                              height: 50,
                              width: 50,
                              //fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 128.0),
                                  child: Text(
                                    "Community",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    '''Be part of our community focused on
planting trees, ending discrimination
and helping the poor.''',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                    maxLines: 3,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 125.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 100,
                                        child: TextButton(
                                            onPressed: () {
                                              // Handle button press
                                            },
                                            style: TextButton.styleFrom(
                                              primary:
                                                  Colors.green, // Text color
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 00, vertical: 0),
                                            ),
                                            child: Row(
                                              children: [
                                                Text('Read more',
                                                    style: TextStyle(
                                                        fontSize: 16)),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward, // Replace with the desired icon from Icons class
                                                    size: 12.0,
                                                    color: Color(0xFF79A206)),
                                              ],
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/one tree world/image 2 (1).jpg',
                height: 200,
                width: 311,
                fit: BoxFit.fill,
              ),
              Container(
                  height: 950,
                  //color: Colors.cyanAccent,
                  child: Stack(children: <Widget>[
                    Image.asset(
                      'assets/one tree world/Rectangle 23.jpg',
                      height: 450,
                      width: 590,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 420,
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2.0),
                                color: Color(0xFF79A206)),
                            child: Column(children: [
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 68.0),
                                child: Text(
                                  "Our Corporate Goal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 26.0),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "We aspire to be the most ethical business on the planet.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 100.0),
                                child: Text(
                                  "We aim to achieve this by:",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16.0),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, bottom: 40),
                                    child: Icon(
                                      Icons
                                          .arrow_forward, // Replace with the desired icon from Icons class
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '''Supporting the UK in achieving its goal
of planting 1.5 billion trees to fight
climate change and become carbon
negative.''',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                      maxLines: 4,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, bottom: 30),
                                    child: Icon(
                                      Icons
                                          .arrow_forward, // Replace with the desired icon from Icons class
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '''Giving retailers a plugin carbon
neutral delivery service which makes
them money''',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, bottom: 30),
                                    child: Icon(
                                      Icons
                                          .arrow_forward, // Replace with the desired icon from Icons class
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '''Making it easy for environmentally
friendly consumers to plant trees''',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, bottom: 10),
                                    child: Icon(
                                      Icons
                                          .arrow_forward, // Replace with the desired icon from Icons class
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '''Supporting UK farmers to plant trees and
reduce their carbon footprint.''',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              )
                            ])),
                      ),
                    ),
                    Positioned(
                        top: 470.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                            //color: Colors.cyan,
                            height: 600,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 250.0),
                                  child: Text(
                                    "Products",
                                    style: TextStyle(
                                        color: Color(0xFF79A206),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 270.0),
                                  child: Text(
                                    "Shop",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                                SizedBox(height:10),
                        Expanded(      child: GridView.builder(
                                  itemCount: cardsData.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        2, // Number of columns in the grid
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Card(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            cardsData[index][
                                                'imagePath'], // Image path from the data
                                            width:100.0,
                                            height: 90.0,
                                          ),
                                          //SizedBox(height: 10.0),
                                          Text(
                                            cardsData[index][
                                                'title'], // Title from the data
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            cardsData[index][
                                                'description'], // Description from the data
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          SizedBox(height: 5.0),
                                          Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height:40 ,width:180 ,
                                                  decoration: BoxDecoration(

                                                    border: Border.all(
                                                      color: Colors.black12,
                                                      width: 2.0,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      // Handle button press
                                                    },
                                                    style: TextButton.styleFrom(
                                                      primary: Colors.green, // Text color
                                                      padding: EdgeInsets.symmetric(horizontal: 00, vertical: 0),
                                                    ),
                                                    child: Text('BUY NOW', style: TextStyle(fontSize: 15)),
                                                  ),

                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ))
                              ],
                            )))
                  ])),
            ],
          ),
        ),
      ) ,

    )



    );
  }
}