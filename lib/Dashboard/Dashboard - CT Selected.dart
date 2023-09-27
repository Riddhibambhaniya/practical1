import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../loginpage  INter9 app/settings.dart';
import 'dashbordbusinesspage.dart';
import 'dashbordhomepage.dart';
import 'dashbordschoolcalender.dart';

class dashbordctselect extends StatefulWidget {
  const dashbordctselect(
      {Key? key, required String email, required String name})
      : super(key: key);

  @override
  State<dashbordctselect> createState() => _dashbordctselectState();
}

class _dashbordctselectState extends State<dashbordctselect> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    BusinessPage(),
    SchoolPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF243B6A),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                "Dashboard",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  settings()),
                )
                    }),
          ]),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF243B6A),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder, color: Colors.white),
            label: 'CT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy, color: Colors.white),
            label: 'OPS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online_rounded, color: Colors.white),
            label: 'HANDLER',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red, // Selected tab color
        unselectedItemColor: Colors.white, // Unselected tabs color
      ),
      // floatingActionButton: MainFloatingActionButton(),
      //floatingActionButton: ,
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/detail', // Set the initial route for the nested navigator
      onGenerateRoute: (settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/detail':
            builder = (BuildContext context) =>HomePage();
            break;
          case '/detail/first':
            builder = (BuildContext context) => BusinessPage();
            break;
          case '/detail/second':
            builder = (BuildContext context) => SchoolPage();
            break;
        // Add more cases for additional nested screens
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}


