import 'package:ali_baba/pages/bottomNavBar/cart.dart';
import 'package:ali_baba/pages/bottomNavBar/messenger.dart';
import 'package:ali_baba/pages/bottomNavBar/profile.dart';
import 'package:ali_baba/pages/bottomNavBar/tips.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    HomeScreen(),
    tips(),
    messenger(),
    cart(),
    profile(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.deepOrange,
        backgroundColor: Colors.grey,
        showUnselectedLabels: true,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye_outlined), label: 'Tips'),
          BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: 'Messenger'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Alibaba'),
        ],
      ),
    );
  }
}
