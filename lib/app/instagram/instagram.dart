import 'package:flutter/material.dart';
import 'package:login_page/app/instagram/ExplorePage.dart';
import 'package:login_page/app/instagram/MessagePage.dart';
import 'package:login_page/app/instagram/ProfilePage.dart';
import 'package:login_page/app/instagram/ReelPage.dart';
import 'package:login_page/app/instagram/homePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: navBarIndex,
        children: [
          //
          Instagram(),
          //
          Reelpage(),
          Messagepage(),
          Explorepage(),
          Profilepage(),

          Explorepage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        //
        items: [
          //
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_outlined, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Home",
          ),
          //),
        ],
      ),
    );
  }
}
