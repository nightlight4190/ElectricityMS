import 'package:flutter/material.dart';
import 'package:intern_project/admin/view/settings/nav_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electricity Management System',
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      home: AdminSettings(),
    );
  }
}
