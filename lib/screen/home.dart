import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screen/bottom_screen/home_page.dart';

import 'package:instagram/screen/bottom_screen/like.dart';
import 'package:instagram/screen/bottom_screen/profile.dart';
import 'package:instagram/screen/bottom_screen/reel.dart';
import 'package:instagram/screen/bottom_screen/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List page = [HomePage(), Search(), Reel(), Like(), Profile()];

  int i = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: page[i],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                ),
                label: "New"),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                ),
                label: "Like"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: "Profile"),
          ],
          currentIndex: i,
          onTap: (index) {
            setState(() {
              i = index;
            });
          },
        ),
      ),
    );
  }
}
