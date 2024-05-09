import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/dashboard.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BODY BUILDING',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
