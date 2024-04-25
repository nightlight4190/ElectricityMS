import 'package:flutter/material.dart';
import 'package:intern_project/view/screens/signIn/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      home: ProfilePage(),
    );
  }
}
