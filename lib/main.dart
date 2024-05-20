import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/SplashScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BODY BUILDING',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


