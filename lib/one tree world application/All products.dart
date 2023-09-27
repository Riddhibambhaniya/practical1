import 'package:flutter/material.dart';
import 'package:practical1/one%20tree%20world%20application/shop.dart';
class Allproductscreen11 extends StatefulWidget {
  @override
  State<Allproductscreen11> createState() => _Allproductscreen11State();
}

class _Allproductscreen11State extends State<Allproductscreen11> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
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
  final List<Map<String, dynamic>> cardsDatas = [
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
  final List<Map<String, dynamic>> cardsDatass = [
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
  final List<Map<String, dynamic>> cardsDatasss = [
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
        key: _scaffoldKey,
        body: SafeArea(
          child: SingleChildScrollView(
            child:Container(
              child:Column(
                children: [
                  Container(
                    height: 150.0,
                    //color: Colors.cyan,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            color: Color(0xFF79A206),
                            width: MediaQuery.of(context).size.width,
                            height: 95.0,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, bottom: 20),
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.arrow_circle_left_outlined,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      onPressed: () => {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Shopscreen11 ()))
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, bottom: 11),
                                  child: Text(
                                    "ALL PRODUCTS",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                          top: 70.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            height: 70,
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1.0),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left: 18.0),
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
                  Container(
                      height:400,
                     // color: Colors.cyanAccent,

                      child: GridView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
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
                      )

                  ),
                  Container(
                      height:400,
                      //color: Colors.cyanAccent,

                      child: GridView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: cardsDatas.length,
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
                                  cardsDatas[index][
                                  'imagePath'], // Image path from the data
                                  width:100.0,
                                  height: 90.0,
                                ),
                                //SizedBox(height: 10.0),
                                Text(
                                  cardsDatas[index][
                                  'title'], // Title from the data
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  cardsDatas[index][
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
                      )

                  ),
                  Container(
                      height:400,
                      //color: Colors.cyanAccent,

                      child: GridView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: cardsDatass.length,
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
                                  cardsDatass[index][
                                  'imagePath'], // Image path from the data
                                  width:100.0,
                                  height: 90.0,
                                ),
                                //SizedBox(height: 10.0),
                                Text(
                                  cardsDatass[index][
                                  'title'], // Title from the data
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  cardsDatass[index][
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
                      )

                  ),
                  Container(
                      height:400,
                      //color: Colors.cyanAccent,

                      child: GridView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: cardsDatasss.length,
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
                                  cardsDatasss[index][
                                  'imagePath'], // Image path from the data
                                  width:100.0,
                                  height: 90.0,
                                ),
                                //SizedBox(height: 10.0),
                                Text(
                                  cardsDatasss[index][
                                  'title'], // Title from the data
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  cardsDatasss[index][
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
                      )

                  )
                      ],

                    )
                  ))
        ),
        );



  }
}