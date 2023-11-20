import 'dart:async';
import 'package:flutter/material.dart';
import 'bottomNavBar/bottomNavBar.dart';
class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}
class _Splash_ScreenState extends State<Splash_Screen> {
  var size, height, width;
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> BottomNavBar()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.yellow,
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: height*0.8),
                width: width*0.6,
                child: Image.asset('assets/logo/logo.png',
                  fit: BoxFit.cover,),
              ),
            ),
            Center(child: Container(
                margin: EdgeInsets.only(top: height*0.87),
                child: Text('Powered By Alibaba Cloud',
                style: TextStyle(
                  color: Colors.grey
                ),
                ))),
          ],
        ),
      ),
    );
  }
}
