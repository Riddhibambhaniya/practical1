import 'package:flutter/material.dart';
import 'package:practical1/one%20tree%20world%20application/shop.dart';

import 'Homepage1.dart';
import 'change password.dart';
import 'editprofile.dart';
import 'order.dart';




class Dashbordscreen11 extends StatefulWidget {
  @override
  State<Dashbordscreen11> createState() => _Dashbordscreen11State();
}

class _Dashbordscreen11State extends State<Dashbordscreen11> {


  int _currentIndex = 0;
  final List<Widget> _tabs = [
    Homepage1 (),
    Shopscreen11(),
    MenuTab(),
    AboutUsTab(),
    HomeTab1(),
  ];
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.white,
            icon: Icon(Icons.home,color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Colors.black),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.black),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,color: Colors.black),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black),
            label: 'Profile',
          ),
        ],

        selectedItemColor: Colors.red, // Selected tab color
        unselectedItemColor: Colors.black,
      ),
    );
  }
}


class HomeTab1  extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final List<String> items = [
    'Orders',
    'Edit Profile',
    'Change Password',
    'Privacy Policy',
    'Terms & Conditions',
    'Logout',

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  height: 750.0,
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
                                    left: 50.0, bottom: 11),
                                child: Text(
                                  "Profile",
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
                          height: 270,
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2.0),
                                color: Colors.white),
                            child: Column(
                              children: [SizedBox(height: 35,),
                                Image.asset(
                                  'assets/one tree world/Rectangle 30.jpg',
                                  height: 110,
                                  width: 110,
                                  fit: BoxFit.fill,
                                ),SizedBox(height: 30,),
                                Text(
                                    "Wade Warren",
                                    style:TextStyle(color:Color(0xFF79A206),
                                        fontWeight: FontWeight.w600,fontSize: 24
                                    )
                                ),
                                SizedBox(height: 12,),
                                Text(
                                    "wade.warren@gmail.com",
                                    style:TextStyle(color:Colors.black45,
                                        fontWeight: FontWeight.w400,fontSize: 18
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),),
                      Positioned(
                          top: 370.0, // Adjust the top position as needed
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    title: Row(
                                      children: [
                                        Text(items[index]),
                                        Spacer(),
                                        IconButton(
                                          icon: Icon(Icons.arrow_forward_ios),
                                          onPressed: () {
                                            if (items[index] == 'Orders') {Navigator.pop(context);
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Ordersscreen ()));
                                            } else if (items[index] == '') {

                                              Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
                                            }
                                            if (items[index] == 'Edit Profile') {Navigator.pop(context);
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Editprofile11()));
                                            } else if (items[index] == '') {

                                              Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
                                            }
                                            if (items[index] == 'Change Password') {Navigator.pop(context);
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Changepassword11()));
                                            } else if (items[index] == '') {

                                              Navigator.pop(context); // Go back to previous screen (or replace with sign-out logic)
                                            }
                                          },
                                        ),
                                      ],
                                    ),

                                );
                              })
                      )
                    ],
                  ),
                ),




              ],
            ),
          ),
        ));
  }
}

class ShopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Shop Tab'),
    );
  }
}

class MenuTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Menu Tab'),
    );
  }
}

class AboutUsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('About Us Tab'),
    );
  }
}





