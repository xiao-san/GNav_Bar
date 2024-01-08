import 'package:bottom_nav_bar/pages/Page2.dart';
import 'package:bottom_nav_bar/pages/page1.dart';
import 'package:bottom_nav_bar/pages/page3.dart';
import 'package:bottom_nav_bar/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selelectedIndex = 0;

  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void onTabChange(index) {
    setState(() {
      _selelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selelectedIndex],
      backgroundColor: Colors.deepPurple[200],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade800,
            color: Colors.white,
            gap: 5,
            padding: const EdgeInsets.all(15),
            activeColor: Colors.white,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Setting',
              ),
            ],
            onTabChange: onTabChange,
          ),
        ),
      ),
    );
  }
}
