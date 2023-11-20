import 'package:ali_baba/pages/splash_screen.dart';
import 'package:flutter/material.dart';

import 'bottomNavBar/home_screen.dart';
void main() {
  runApp(const aliBaba());
}

class aliBaba extends StatelessWidget {
  const aliBaba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ali Baba App',
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
