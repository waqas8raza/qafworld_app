import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qafworld_app/screens/contact_screen.dart';
import 'package:qafworld_app/screens/dashboard.dart';
import 'package:qafworld_app/screens/add_funds_page.dart';
import 'package:qafworld_app/screens/profile_screens/ProfileScreen.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int index = 0;
  List screens = [
    const DashboardScreen(),
    const AddFundsPage(),
    const ContactScreen(),
    const ProfileScreen()
  ];

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          color: Theme.of(context).primaryColor,
          buttonBackgroundColor: Theme.of(context).primaryColorDark,
          animationCurve: Curves.easeInOutCubic,
          items: const [
            Icon(Icons.home),
            Icon(Icons.payment),
            Icon(Icons.contact_mail),
            Icon(Icons.person),
          ]),
      body: screens[myIndex],
    );
  }
}
