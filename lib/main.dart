import 'package:flutter/material.dart';
import 'package:intern_project/admin/view/administration/add_user.dart';
import 'package:intern_project/admin/view/settings/admin_settings.dart';

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
      home: AdminSettings(),
    );
  }
}
