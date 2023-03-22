import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/consts.dart';
import 'package:instagram_clone/pages/HomePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backGroundColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: primaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: primaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: primaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: primaryColor,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: primaryColor,
              ),
              label: ""),
        ],
        onTap: navigationTapped,
      ),
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          Center(
            child: Text(
              "Search",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
          Center(
            child: Text(
              "Post",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
          Center(
            child: Text(
              "Activity",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
          Center(
            child: Text(
              "Profile",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
        onPageChanged: onPageChanged,
      ),
    );
  }
}
