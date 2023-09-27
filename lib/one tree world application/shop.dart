import 'package:flutter/material.dart';

import 'All products.dart';
import 'dashbord11.dart';

class Shopscreen11 extends StatefulWidget {
  @override
  State<Shopscreen11> createState() => _Shopscreen11State();
}

class _Shopscreen11State extends State<Shopscreen11> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final List<String> images = [
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
    'assets/one tree world/u_trees.jpg',
  ];

  final List<String> itemTexts = [
    'ALL',
    'Plant',
    'tree',
    'Plant',
    'tree',
    'tree',
    ' Plant',
    ' tree',
    'Plant',
    'tree',
  ];
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/one tree world/Rectangle 25 (3).jpg',
      'text': 'Plant one tree',
      'texts': '£99.00'
    },
    {
      'image': 'assets/one tree world/Rectangle 25 (1).jpg',
      'text': 'Plant two tree',
      'texts': '£99.00'
    },
    {
      'image': 'assets/one tree world/Rectangle 25 (3).jpg',
      'text': 'Plant three tree',
      'texts': '£99.00'
    },
    {
      'image': 'assets/one tree world/Rectangle 25 (1).jpg',
      'text': 'Plant four tree',
      'texts': '£99.00'
    },
    {
      'image': 'assets/one tree world/Rectangle 25 (3).jpg',
      'text': 'Plant five tree',
      'texts': '£99.00'
    },
  ];
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
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
                                      Navigator.pushNamed(context, '/dashbordscreen11')
                                          }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, bottom: 11),
                                  child: Text(
                                    "Shop",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),
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
                      height: 150,


                      child: GridView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(height: 400,
                           // margin: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  images[index],
                                  width: 30.0,
                                  height: 30,
                                  // fit: BoxFit.fill,
                                ),


                                Container(height: 40,width:70 ,
                                  child: TextButton(
                                    onPressed: () {
                                      if (itemTexts[index] == 'ALL') {Navigator.pop(context);
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Allproductscreen11 ()));
                                      } else if (itemTexts[index] == '') {

                                        Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
                                      }



                                    },

                                    child: Text(itemTexts[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),


                              ],
                            ),
                          );
                        },
                      )


                      ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 208.0),
                        child: Text(
                          "Today’s Deals",
                          style: TextStyle(
                              color: Color(0xFF79A206), fontSize: 18.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 195.0),
                        child: Text(
                          "Grab a deal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 60,
                              width: 160,
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.all(2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      items[index]['image'],
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['text'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['texts'],
                                      style: TextStyle(
                                          color: Color(0xFF79A206),
                                          fontSize: 14.0),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0),
                        child: Text(
                          "Featured",
                          style: TextStyle(
                              color: Color(0xFF79A206), fontSize: 18.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 114.0),
                        child: Text(
                          "Featured Products",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 60,
                              width: 160,
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.all(2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      items[index]['image'],
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['text'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['texts'],
                                      style: TextStyle(
                                          color: Color(0xFF79A206),
                                          fontSize: 14.0),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250.0),
                        child: Text(
                          "Popular",
                          style: TextStyle(
                              color: Color(0xFF79A206), fontSize: 18.0),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 90.0),
                        child: Text(
                          "Our Popular Products",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 60,
                              width: 160,
                              child: Card(
                                elevation: 4,
                                margin: EdgeInsets.all(2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      items[index]['image'],
                                      width: 130,
                                      height: 130,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['text'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      items[index]['texts'],
                                      style: TextStyle(
                                          color: Color(0xFF79A206),
                                          fontSize: 14.0),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      height:400,
                      //color: Colors.cyanAccent,

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

                  )
                ],
              ),
            ),
          ),
        ));
  }
}
