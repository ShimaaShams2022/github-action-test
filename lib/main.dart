import 'package:flutter/material.dart';
import 'package:github_action_test/test/home_screen.dart';

void main() {
  runApp(const MyApp());

  //try 2 validate branch name

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
    );
  }

}
