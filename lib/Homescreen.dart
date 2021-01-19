import 'package:UdemyClone/Screens/Homescreens/account.dart';
import 'package:UdemyClone/Screens/Homescreens/featured.dart';
import 'package:UdemyClone/Screens/Homescreens/mycourses.dart';
import 'package:UdemyClone/Screens/Homescreens/search.dart';
import 'package:UdemyClone/Screens/Homescreens/wishlist.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController,
        children: [Featured(), Search(), MyCourses(), Wishlist(), Account()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        iconSize: 26.0,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Featured'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.play),
            title: Text('My Courses'),
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.heartOutline),
            title: Text('Wishlist'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('Account'),
          )
        ],
      ),
    );
  }
}
