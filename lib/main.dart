import 'package:assessmentoruphone1/pages/Login/PhonePage.dart';
import 'package:assessmentoruphone1/pages/Login/namePage.dart';
import 'package:assessmentoruphone1/pages/Login/otpPage.dart';
import 'package:assessmentoruphone1/pages/Splacescreen/splacescreen.dart';
import 'package:assessmentoruphone1/pages/homepage/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  // Initialize Firebase
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PhonePage()
    );
  }
}
