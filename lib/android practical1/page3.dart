import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practical1/android%20practical1/page2.dart';



class page3 extends StatefulWidget {


  @override
  State<page3> createState() => _page3State();
}
class _page3State extends State<page3> {
  final items = [
    Image.asset('assets/onion 2.jpg'),

  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black87),
              onPressed: () =>
                  Navigator.pushNamed(context, '/dashbord')
            ),backgroundColor: Colors.white,),
            body:SafeArea(
        child: SingleChildScrollView(
          child:Container(
    child: Column(
      children: [
        Column(
          children: [
            Container(
              width: 6,
              height: 12,
            )
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: items,
        ),
//         DotsIndicator(
//           dotsCount: 1,
//           position: dotposition.runtimeType,
// //declare the position to autoplay
//
//         ),
        // Image.asset(
        //   "assets/onion 2.jpg",
        //   width: 405,
        //   height: 233,
        // ),
        Container(padding: EdgeInsets.only(top:5),
          child: Image.asset(
            "assets/Group 6.jpg",
             width: 68,
             height: 8,

          ),
        ),
        Container(padding: EdgeInsets.only(left:30,top:30,right:30),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Onion",

                  style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,fontSize: 28
                  )
              ),
              Text(
                  "₹20",

                  style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,fontSize: 24,color: Colors.deepOrange
                  )
              )

            ],
          ),
        ),
        Container( padding: EdgeInsets.only(right:250,top:5,bottom:3),
          child: Text(
              "Vitamins",

              style:GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,fontSize: 17
              )
          ),
        ),
        Container(padding: EdgeInsets.only(left:30,right:30,top:8),
          child: Row( mainAxisSize: MainAxisSize.max,
            children: [
              Stack(children: [ Container(
                  width: 39,
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Color(0xffebebeb)
                  )
              ),
                Container(
                  margin: EdgeInsets.all(6),padding: EdgeInsets.only(left:6),
                  child: Text(
                      "C",

                      style:GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,fontSize: 15,color: Colors.deepOrange
                      )
                  ),
                )],),
              Container(padding: EdgeInsets.only(left:10),
                child: Stack(children: [ Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: Color(0xffebebeb))
                ),
                  Container(margin: EdgeInsets.all(6),padding: EdgeInsets.only(left:6),
                    child: Text(
                        "B1",
                        style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,fontSize: 15,color: Colors.deepOrange
                        )
                    ),
                  )],),
              ),
              Container(padding: EdgeInsets.only(left:10),
                child: Stack(children: [ Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: Color(0xffebebeb))
                ),
                  Container(margin: EdgeInsets.all(6),padding: EdgeInsets.only(left:6),
                    child: Text(
                        "B3",
                        style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,fontSize: 15,color: Colors.deepOrange
                        )
                    ),
                  )],),
              ),
              Container(padding: EdgeInsets.only(left:10),
                child: Stack(children: [ Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color: Color(0xffebebeb))
                ),
                  Container(margin: EdgeInsets.all(6),padding: EdgeInsets.only(left:6),
                    child: Text(
                        "B6",
                        style:GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,fontSize: 15,color: Colors.deepOrange
                        ),
                    ),
                  )],),
              ),
            ],
          ),
        ),
        Container( padding: EdgeInsets.only(right:250,top:8),
          child: Text(
              "Minerals",
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.w600,fontSize: 17,
              )
          ),
        ),
        Row(
          children: [
            Container(padding: EdgeInsets.only(left:35,top:6),
              child: Text(
                  "Potassium, Phosphorus, Magnesium",
                  style:GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,fontSize: 15,
                  )
              ),
            ),
          ],
        ),
        Container(padding: EdgeInsets.only(right:225,top:6),
          child: Text(
              "Description",
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.w600,fontSize: 17,
              )
          ),
        ),
        Container(padding:EdgeInsets.only(left: 35,right:30,top:6),
          child: Text(
              "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.w400,fontSize: 15,
              )
          ),
        ),
        Container(padding: EdgeInsets.only(right:290,top:6),
          child: Text(
              "Pros",
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.w600,fontSize: 17,
              )
          ),
        ),
        Container(padding: EdgeInsets.only(right:30,top:6,left:30),
          child: Column(
            children: [
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),

                   Column(
                    children: [
                      Container(
                        //padding:EdgeInsets.only(left:20 ,right:5,),
                        width: 13,
                        height: 13.832763671875,
                        child: Image.asset(
                          "assets/bx_bxs-right-arrow.jpg",
                          width: 13,
                          height: 13,

                        ),
                      )
                    ],
                  ),
                ],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Studies have linked potatoes and their nutrients to a variety of impressive health benefits, including improved blood sugar control, reduced heart disease risk and higher immunity. They may also improve digestive health and combat signs of aging",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow.jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "otatoes are also quite filling, which means they may help you lose weight by curbing hunger pains and cravings",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow.jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow.jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow.jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],)

            ],
          ),
        ),Container(padding:EdgeInsets.only(right:290 ,top:6,),
          child: Text(
              "Cons",
              style:GoogleFonts.poppins(
                fontWeight: FontWeight.w400,fontSize: 12,
              )
          ),
        ),
        Container(padding: EdgeInsets.only(right:30,top:6,left:30),
          child: Column(
            children: [
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow (2).jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Studies have linked potatoes and their nutrients to a variety of impressive health benefits, including improved blood sugar control, reduced heart disease risk and higher immunity. They may also improve digestive health and combat signs of aging",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow (2).jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "otatoes are also quite filling, which means they may help you lose weight by curbing hunger pains and cravings",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow (2).jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow (2).jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],),
              Stack(children: [    Container(padding:EdgeInsets.only(left:20 ,right:5,),
                child: Text(
                    "Potatoes are rich in vitamins, minerals and antioxidants, which make them very healthy",
                    style:GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,fontSize: 12,
                    )
                ),
              ),
                Column(
                  children: [
                    Container(
                      width: 13,
                      height: 13.832763671875,
                      child: Image.asset(
                        "assets/bx_bxs-right-arrow (2).jpg",
                        width: 13,
                        height: 13,

                      ),
                    )
                  ],
                )],)
            ],
          ),
        )

]
        )

    )
    ))
    );
  }
}
