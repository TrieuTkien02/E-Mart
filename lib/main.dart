import 'package:e_mart/screens/auth_ui/welcome/welcome.dart';
import 'package:e_mart/firebase_helper/firebase_options/firebase_options.dart';
import 'package:e_mart/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:e_mart/screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constants/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Mart',
      theme: themeData,
      home: StreamBuilder(
          stream: FirebaseAuthHelper.instance.getAuthChange,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Home();
            }
            return const Welcome();
          },
        ),
    );
  }
}
