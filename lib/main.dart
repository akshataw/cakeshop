import 'package:flutter/material.dart';
import 'components/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cake Shop',
      home: SplashScreen(),
    );
  }
}
