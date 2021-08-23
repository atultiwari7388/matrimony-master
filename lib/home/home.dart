import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimony/Pages/home_page.dart';
import 'package:matrimony/Pages/mail_box.dart';
import 'package:matrimony/Pages/matches.dart';
import 'package:matrimony/Pages/profile_page.dart';
import 'package:matrimony/Pages/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildPages() {
    switch (index) {
      // My ads Screen
      case 1:
        return MatchesPage();
      //chat screen
      case 2:
        return MailBox();
      // setting Screen
      case 3:
        return SearchPage();
      // by default home screen
      case 4:
        return ProfilePage();
      case 0:
      default:
        return HomePage();
    }
  }

  Widget buildBottomNavigation() {
    final inactiveColor = Colors.grey;

    return BottomNavyBar(
      backgroundColor: Color(0xffFD96A3),
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        // Home Screen
        BottomNavyBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Home',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
            ),
          ),
          activeColor: Colors.brown,
          textAlign: TextAlign.center,
        ),
        // Account Info
        BottomNavyBarItem(
          icon: Icon(
            Icons.group_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Matches',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
            ),
          ),
          textAlign: TextAlign.center,
          activeColor: Colors.brown,
          // inactiveColor: inactiveColor,
        ),
        // store Location
        BottomNavyBarItem(
          icon: Icon(
            Icons.email_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Mailbox',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
            ),
          ),
          textAlign: TextAlign.center,
          activeColor: Colors.brown,
          // inactiveColor: inactiveColor,
        ),
        // Appointment
        BottomNavyBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          title: Text(
            'Search',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
            ),
          ),
          textAlign: TextAlign.center,
          activeColor: Colors.brown,
          // inactiveColor: inactiveColor,
        ),

        BottomNavyBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
          title: Text(
            'Profile',
            style: GoogleFonts.aBeeZee(
              color: Colors.white,
            ),
          ),
          textAlign: TextAlign.center,
          activeColor: Colors.brown,
          inactiveColor: inactiveColor,
        ),
      ],
    );
  }
}
