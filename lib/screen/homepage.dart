import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniproject/Untitled-1.dart';
import 'package:miniproject/models/googlemaps.dart';
import 'package:miniproject/pages/loginpage.dart';
import 'package:miniproject/screen/homepage_grid.dart';
import 'package:miniproject/utils/utils.dart';

class MainHomePage extends StatelessWidget {
  void signUserOut() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 193, 77, 106),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 9, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 193, 77, 106),
            gap: 8,
            tabBackgroundColor: Color.fromARGB(255, 241, 174, 191),
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
            tabs: [
              GButton(
                icon: Icons.home,
                iconColor: Color.fromRGBO(246, 198, 210, 1),
                iconActiveColor: Color.fromRGBO(128, 45, 83, 1),
                text: 'Home',
                textStyle: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                iconSize: 25,
              ),
              GButton(
                icon: Icons.remove_red_eye,
                iconColor: Color.fromRGBO(246, 198, 210, 1),
                iconActiveColor: Color.fromRGBO(128, 45, 83, 1),
                text: 'Camera',
                textStyle: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
                iconSize: 33,
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Color.fromRGBO(246, 198, 210, 1),
                iconActiveColor: Color.fromRGBO(128, 45, 83, 1),
                text: 'Settings',
                textStyle: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                iconSize: 25,
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 193, 77, 106),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 77, 106),
        shadowColor: Color.fromRGBO(128, 45, 83, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
          color: Color.fromRGBO(246, 198, 210, 1),
          iconSize: 37,
        ),
        title: new Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'MINI-PROJECT',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromRGBO(246, 198, 210, 1),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout,
              size: 35,
              color: Color.fromRGBO(246, 198, 210, 1),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                color: Color.fromRGBO(246, 198, 210, 1),
                fontSize: 30,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MainHomePageGrid(),
          )
        ],
      ),
    );
  }
}
