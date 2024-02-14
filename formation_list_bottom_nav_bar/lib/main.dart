import 'package:flutter/material.dart';
import 'package:formation_list_bottom_nav_bar/views/home/home_screen.dart';
import 'package:formation_list_bottom_nav_bar/views/training_list/display_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomeScreen(),
          // body: DisplayCards(),
        ) 
        );
  }
}
