import 'package:flutter/material.dart';
import 'package:yt_app/screens/home_screen.dart';
import 'package:yt_app/themes/dark_theme.dart';
import 'package:yt_app/themes/white_theme.dart';

void main() {
  runApp(const MyApp());
}

//bool _light = true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: whiteTheme,
      home: const HomeScreen(),
    );
  }
}
