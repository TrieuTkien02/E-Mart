import 'package:e_mart/screens/auth_ui/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Mart',
      theme: themeData,
      home: const Welcome(),
    );
  }
}
