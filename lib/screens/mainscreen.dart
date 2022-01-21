import 'package:projet_final/screens/profile_screen.dart';

import '/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'chat/chats.dart';
import 'notifications.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currIndex = 0;

  var myPages = [
    HomePage(),
    Chats(),
    Notifications(),
    ProfilPage(url: '',),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: myPages[_currIndex],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currIndex,
        onTap: (i) => setState(() {
          _currIndex = i;
          print(i);
        }),
        items: [
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/home_icon.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Home"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_home_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/email.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Messages"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/email_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/icon_card.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Notifications"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/icon_card_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
          SalomonBottomBarItem(
            icon: SizedBox(
              child: Image.asset(
                'assets/User_icon.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
            title: Text("Profile"),
            selectedColor: Color(0xff7F74EB),
            activeIcon: SizedBox(
              child: Image.asset(
                'assets/User_active.png',
                fit: BoxFit.cover,
              ),
              height: 26,
              width: 26,
            ),
          ),
        ],
      ),
    );
  }
}
